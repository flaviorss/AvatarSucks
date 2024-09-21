//var fetchURL = "https://buys-retailers-recommend-additionally.trycloudflare.com"
var fetchURL = "http://localhost:8080"

async function fetchData() {
    try{
        const response = await fetch(fetchURL + "/mineradores");
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const data = await response.json();
        showMinerador(data);
    } catch (error) {
        console.error('Fetch list error:', error);
    }
}

async function createMinerador() {
    document.getElementById('createForm').addEventListener('submit', async function(event) {
        event.preventDefault();

        const nome = document.getElementById('inputNome').value;
        const genero = document.getElementById('inputGenero').value;
        const salario = document.getElementById('inputSalario').value;
        const idColonia = document.getElementById('inputIDColonia').value;
        const especialidade = document.getElementById('inputEspecialidade').value;

        const mineradorData = {
            Nome: nome,
            Genero: genero,
            Salario: parseFloat(salario),
            IDColonia: idColonia,
            Especialidade: especialidade,
        };

            console.log(JSON.stringify(mineradorData));

        try{
            const response = await fetch(`${fetchURL}/mineradores`, {
                method: 'POST',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(mineradorData)             
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

async function editMinerador(ID, Nome, Genero, Salario, IDColonia, Especialidade) {
    // Preencher os campos do modal com os dados da jazida
    document.getElementById('inputModalNome').value = Nome;
    document.getElementById('inputModalGenero').value = Genero;
    document.getElementById('inputModalSalario').value = Salario;
    document.getElementById('inputModalIDColonia').value = IDColonia;
    document.getElementById('inputModalEspecialidade').value = Especialidade;

    document.getElementById('updateForm').addEventListener('submit', async function(event) {
        event.preventDefault();

        const salario = document.getElementById('inputModalSalario').value;
        const genero = document.getElementById('inputModalGenero').value;
        const nome = document.getElementById('inputModalNome').value;
        const idcolonia = document.getElementById('inputModalIDColonia').value;
        const especialidade = document.getElementById('inputModalEspecialidade').value;

        const mineradorData = {
            Nome: nome,
            Salario: parseFloat(salario),
            Genero: genero,
            IDColonia: idcolonia,
            Especialidade: especialidade,
        };

        try {
            const response = await fetch(`${fetchURL}/mineradores/${ID}`, {
                method: 'PUT',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(mineradorData)
            });

            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }

            await fetchData();
            const modalElement = document.getElementById('modalEditarMinerador');
            const modal = bootstrap.Modal.getInstance(modalElement);
            modal.hide(); 
        } catch (error) {
            console.error('Fetch update error:', error);
        }
    });

}

async function deleteMinerador(id) {
    try{
        const response = await fetch(`${fetchURL}/mineradores/${id}`, {
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

function showMinerador(mineradores) {
    const container = document.getElementById('minerador-table-container');
    let tableHTML = `
                    <table class="table">
                    <thead>
                    <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Salario</th>
                    <th scope="col">Genero</th>
                    <th scope="col">Colonia</th>
                    <th scope="col">Especialidade</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody class="table-group-divider">`;

    mineradores.forEach(minerador => {
        tableHTML += `
                     <tr>
                     <th scope="row">${minerador.ID}</th>
                     <td>${minerador.Nome}</td>
                     <td>${minerador.Salario}</td>
                     <td>${minerador.Genero}</td>
                     <td>${minerador.IDColonia}</td>
                     <td>${minerador.Especialidade}</td>
                     <td><button onclick="editMinerador('${minerador.ID}', '${minerador.Nome}', '${minerador.Genero}', '${minerador.Salario}','${minerador.IDColonia}', '${minerador.Especialidade}')" 
                            type="button" 
                            data-bs-toggle="modal"
                            class="btn btn-warning" 
                            data-bs-target="#modalEditarMinerador" 
     c                      lass="btn btn-warning">Editar</button></td>
                     <td><button onclick="deleteMinerador(${minerador.ID})" type="button" class="btn btn-danger">Excluir</button></td>
                     </tr>`;
    });

    tableHTML += `
             </tbody>
             </table>`;

    container.innerHTML = tableHTML;
}

fetchData();
fetchColonias();
createMinerador();
