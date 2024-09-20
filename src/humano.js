var fetchURL = "http://localhost:8080"

async function fetchData() {
    try{
        const response = await fetch(fetchURL + "/humanos");
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const data = await response.json();
        showHumano(data);
    } catch (error) {
        console.error('Fetch list error:', error);
    }
}

async function createHumano() {
    document.getElementById('createForm').addEventListener('submit', async function(event) {
        event.preventDefault();

        const nome = document.getElementById('inputNome').value;
        const genero = document.getElementById('inputGenero').value;
        const salario = document.getElementById('inputSalario').value;
        const idColonia = document.getElementById('inputIDColonia').value;

        const humanoData = {
            Nome: nome,
            Genero: genero,
            Salario: parseFloat(salario),
            IDColonia: idColonia,
        };

            console.log(JSON.stringify(humanoData));

        try{
            const response = await fetch(`${fetchURL}/humanos`, {
                method: 'POST',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(humanoData)             
            });

            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }

            await fetchData();
        } catch (error) {
            console.error('Fetch create error:', error);
        }
       });
}

async function deleteHumano(id) {
    try{
        const response = await fetch(`${fetchURL}/humanos/${id}`, {
            method: 'DELETE'
        });
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        fetchData();
    } catch (error) {
        console.error('Fetch delete error:', error);
    }
}

function showHumano(humanos) {
    const container = document.getElementById('humano-table-container');
    let tableHTML = `
                    <table class="table">
                    <thead>
                    <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Salario</th>
                    <th scope="col">Genero</th>
                    <th scope="col">Colonia</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody class="table-group-divider">`;

    humanos.forEach(humano => {
        tableHTML += `
                     <tr>
                     <th scope="row">${humano.ID}</th>
                     <td>${humano.Nome}</td>
                     <td>${humano.Salario}</td>
                     <td>${humano.Genero}</td>
                     <td>${humano.IDColonia}</td>
                     <td><button onclick="test()" type="button" class="btn btn-warning">Editar</button></td>
                     <td><button onclick="deleteHumano(${humano.ID})" type="button" class="btn btn-danger">Excluir</button></td>
                     </tr>`;
    });

    tableHTML += `
             </tbody>
             </table>`;

    container.innerHTML = tableHTML;
}

fetchData();
createHumano();
