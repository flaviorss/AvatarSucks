var fetchURL = "https://buys-retailers-recommend-additionally.trycloudflare.com"

async function fetchData() {
    try{
        const response = await fetch(fetchURL + "/militares");
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const data = await response.json();
        showMilitar(data);
    } catch (error) {
        console.error('Fetch list error:', error);
    }
}

async function createMilitar() {
    document.getElementById('createForm').addEventListener('submit', async function(event) {
        event.preventDefault();

        const nome = document.getElementById('inputNome').value;
        const genero = document.getElementById('inputGenero').value;
        const salario = document.getElementById('inputSalario').value;
        const idColonia = document.getElementById('inputIDColonia').value;
        const patente = document.getElementById('inputPatente').value;

        const militarData = {
            Nome: nome,
            Genero: genero,
            Salario: parseFloat(salario),
            IDColonia: idColonia,
            Patente: patente,
        };

            console.log(JSON.stringify(militarData));

        try{
            const response = await fetch(`${fetchURL}/militares`, {
                method: 'POST',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(militarData)             
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

async function editMilitar(ID, Nome, Genero, Salario, IDColonia, Patente) {
    // Preencher os campos do modal com os dados da jazida
    document.getElementById('inputModalNome').value = Nome;
    document.getElementById('inputModalGenero').value = Genero;
    document.getElementById('inputModalSalario').value = Salario;
    document.getElementById('inputModalIDColonia').value = IDColonia;
    document.getElementById('inputModalPatente').value = Patente;

    document.getElementById('updateForm').addEventListener('submit', async function(event) {
        event.preventDefault();

        const salario = document.getElementById('inputModalSalario').value;
        const genero = document.getElementById('inputModalGenero').value;
        const nome = document.getElementById('inputModalNome').value;
        const idcolonia = document.getElementById('inputModalIDColonia').value;
        const patente = document.getElementById('inputPatente').value;

        const militarData = {
            Nome: nome,
            Salario: parseFloat(salario),
            Genero: genero,
            IDColonia: idcolonia,
            Patente: patente,
        };

        try {
            const response = await fetch(`${fetchURL}/militares/${ID}`, {
                method: 'PUT',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(militarData)
            });

            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }

            await fetchData();
            const modalElement = document.getElementById('modalEditarMilitar');
            const modal = bootstrap.Modal.getInstance(modalElement);
            modal.hide(); 
        } catch (error) {
            console.error('Fetch update error:', error);
        }
    });

}

async function deleteMilitar(id) {
    try{
        const response = await fetch(`${fetchURL}/militares/${id}`, {
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

function showMilitar(militares) {
    const container = document.getElementById('militar-table-container');
    let tableHTML = `
                    <table class="table">
                    <thead>
                    <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Salario</th>
                    <th scope="col">Genero</th>
                    <th scope="col">Colonia</th>
                    <th scope="col">Patente</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody class="table-group-divider">`;

    militares.forEach(militar => {
        tableHTML += `
                     <tr>
                     <th scope="row">${militar.ID}</th>
                     <td>${militar.Nome}</td>
                     <td>${militar.Salario}</td>
                     <td>${militar.Genero}</td>
                     <td>${militar.IDColonia}</td>
                     <td>${militar.Patente}</td>
                     <td><button onclick="editMilitar('${militar.ID}', '${militar.Nome}', '${militar.Genero}', '${militar.Salario}','${militar.IDColonia}', '${militar.Patente}')" 
                            type="button" 
                            data-bs-toggle="modal"
                            class="btn btn-warning" 
                            data-bs-target="#modalEditarMilitar" 
     c                      lass="btn btn-warning">Editar</button></td>
                     <td><button onclick="deleteMilitar(${militar.ID})" type="button" class="btn btn-danger">Excluir</button></td>
                     </tr>`;
    });

    tableHTML += `
             </tbody>
             </table>`;

    container.innerHTML = tableHTML;
}

fetchData();
fetchColonias();
createMilitar();
