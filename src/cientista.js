//var fetchURL = "https://buys-retailers-recommend-additionally.trycloudflare.com"
var fetchURL = "http://localhost:8080"

async function fetchData() {
    try{
        const response = await fetch(fetchURL + "/cientistas");
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const data = await response.json();
        showCientista(data);
    } catch (error) {
        console.error('Fetch list error:', error);
    }
}

async function createCientista() {
    document.getElementById('createForm').addEventListener('submit', async function(event) {
        event.preventDefault();

        const nome = document.getElementById('inputNome').value;
        const genero = document.getElementById('inputGenero').value;
        const salario = document.getElementById('inputSalario').value;
        const idColonia = document.getElementById('inputIDColonia').value;
        const areaAtuacao = document.getElementById('inputAreaAtuacao').value;

        const cientistaData = {
            Nome: nome,
            Genero: genero,
            Salario: parseFloat(salario),
            IDColonia: idColonia,
            AreaAtuacao: areaAtuacao,
        };

            console.log(JSON.stringify(cientistaData));

        try{
            const response = await fetch(`${fetchURL}/cientistas`, {
                method: 'POST',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(cientistaData)             
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

async function editCientista(ID, Nome, Genero, Salario, IDColonia, AreaAtuacao) {
    // Preencher os campos do modal com os dados da jazida
    document.getElementById('inputModalNome').value = Nome;
    document.getElementById('inputModalGenero').value = Genero;
    document.getElementById('inputModalSalario').value = Salario;
    document.getElementById('inputModalIDColonia').value = IDColonia;
    document.getElementById('inputModalAreaAtuacao').value = AreaAtuacao;

    document.getElementById('updateForm').addEventListener('submit', async function(event) {
        event.preventDefault();

        const salario = document.getElementById('inputModalSalario').value;
        const genero = document.getElementById('inputModalGenero').value;
        const nome = document.getElementById('inputModalNome').value;
        const idcolonia = document.getElementById('inputModalIDColonia').value;
        const areaAtuacao = document.getElementById('inputModalAreaAtuacao').value;

        const cientistaData = {
            Nome: nome,
            Salario: parseFloat(salario),
            Genero: genero,
            IDColonia: idcolonia,
            AreaAtuacao: areaAtuacao,
        };

        try {
            const response = await fetch(`${fetchURL}/cientistas/${ID}`, {
                method: 'PUT',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(cientistaData)
            });

            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }

            await fetchData();
            const modalElement = document.getElementById('modalEditarCientista');
            const modal = bootstrap.Modal.getInstance(modalElement);
            modal.hide(); 
        } catch (error) {
            console.error('Fetch update error:', error);
        }
    });

}

async function deleteCientista(id) {
    try{
        const response = await fetch(`${fetchURL}/cientistas/${id}`, {
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

function showCientista(cientistas) {
    const container = document.getElementById('cientista-table-container');
    let tableHTML = `
                    <table class="table">
                    <thead>
                    <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Salario</th>
                    <th scope="col">Genero</th>
                    <th scope="col">Colonia</th>
                    <th scope="col">AreaAtuacao</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody class="table-group-divider">`;

    cientistas.forEach(cientista => {
        tableHTML += `
                     <tr>
                     <th scope="row">${cientista.ID}</th>
                     <td>${cientista.Nome}</td>
                     <td>${cientista.Salario}</td>
                     <td>${cientista.Genero}</td>
                     <td>${cientista.IDColonia}</td>
                     <td>${cientista.AreaAtuacao}</td>
                     <td><button onclick="editCientista('${cientista.ID}', '${cientista.Nome}', '${cientista.Genero}', '${cientista.Salario}','${cientista.IDColonia}', '${cientista.AreaAtuacao}')" 
                            type="button" 
                            data-bs-toggle="modal"
                            class="btn btn-warning" 
                            data-bs-target="#modalEditarCientista" 
     c                      lass="btn btn-warning">Editar</button></td>
                     <td><button onclick="deleteCientista(${cientista.ID})" type="button" class="btn btn-danger">Excluir</button></td>
                     </tr>`;
    });

    tableHTML += `
             </tbody>
             </table>`;

    container.innerHTML = tableHTML;
}

fetchData();
fetchColonias();
createCientista();
