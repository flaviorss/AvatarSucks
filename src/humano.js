//var fetchURL = "http://localhost:8080"
var fetchURL = "https://buys-retailers-recommend-additionally.trycloudflare.com"

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

async function fetchColonias(){
    try{
        const response = await fetch(fetchURL + "/colonias");
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const colonias = await response.json();
        populateColoniaSelect(colonias);
        populateColoniaSelectModal(colonias);
    } catch (error) {
        console.error('Fetch regions error:', error);
    }
}

async function populateColoniaSelect(colonias) {
    const select = document.getElementById('inputIDColonia');

    select.innerHTML = '<option value=""></option>';

    colonias.forEach(colonia => {
        const option = document.createElement('option');
        option.value = colonia.ID; // Assuming the API returns an id field
        option.textContent = `${colonia.ID} - ${colonia.Empresa}` // Assuming the API returns a nome field
        select.appendChild(option);
    });
        
}

async function populateColoniaSelectModal(colonias) {
    const select = document.getElementById('inputModalIDColonia');

    select.innerHTML = '<option value=""></option>';

    colonias.forEach(colonia => {
        const option = document.createElement('option');
        option.value = colonia.ID; // Assuming the API returns an id field
        option.textContent = `${colonia.ID} - ${colonia.Empresa}` // Assuming the API returns a nome field
        select.appendChild(option);
    });
        
}

async function editHumano(ID, Nome, Genero, Salario, IDColonia) {
    // Preencher os campos do modal com os dados da jazida
    document.getElementById('inputModalNome').value = Nome;
    document.getElementById('inputModalGenero').value = Genero;
    document.getElementById('inputModalSalario').value = Salario;
    document.getElementById('inputModalIDColonia').value = IDColonia;

    document.getElementById('updateForm').addEventListener('submit', async function(event) {
        event.preventDefault();

        const salario = document.getElementById('inputModalSalario').value;
        const genero = document.getElementById('inputModalGenero').value;
        const nome = document.getElementById('inputModalNome').value;
        const idcolonia = document.getElementById('inputModalIDColonia').value;

        const humanoData = {
            Nome: nome,
            Salario: parseFloat(salario),
            Genero: genero,
            IDColonia: idcolonia
        };

        try {
            const response = await fetch(`${fetchURL}/humanos/${ID}`, {
                method: 'PUT',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(humanoData)
            });

            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }

            await fetchData();
            const modalElement = document.getElementById('modalEditarHumano');
            const modal = bootstrap.Modal.getInstance(modalElement);
            modal.hide(); 
        } catch (error) {
            console.error('Fetch update error:', error);
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
                    <th scope="col">Cargo</th>
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
                     <td>${humano.Cargo}</td>
                     <td>${humano.IDColonia}</td>
                     <td><button onclick="editHumano('${humano.ID}', '${humano.Nome}', '${humano.Genero}', '${humano.Salario}', ${humano.IDColonia})" 
                            type="button" 
                            data-bs-toggle="modal"
                            class="btn btn-warning" 
                            data-bs-target="#modalEditarHumano" 
     c                      lass="btn btn-warning">Editar</button></td>
                     <td><button onclick="deleteHumano(${humano.ID})" type="button" class="btn btn-danger">Excluir</button></td>
                     </tr>`;
    });

    tableHTML += `
             </tbody>
             </table>`;

    container.innerHTML = tableHTML;
}

fetchData();
fetchColonias();
createHumano();
