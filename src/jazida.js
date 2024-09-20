var fetchURL = "http://localhost:8080"

async function fetchData() {
    try{
        const response = await fetch(fetchURL + "/jazidas");
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const data = await response.json();
        showJazida(data);
    } catch (error) {
        console.error('Fetch list error:', error);
    }
}

async function createJazida() {
    document.getElementById('createForm').addEventListener('submit', async function(event) {
        event.preventDefault();

        const latitude = document.getElementById('inputlatitude').value;
        const longitude = document.getElementById('inputLongitude').value;
        const nome = document.getElementById('inputNome').value;
        const altura = document.getElementById('inputAltura').value;
        const base = document.getElementById('inputBase').value;
        const idRegiao = document.getElementById('inputIDRegiao').value;

        const jazidaData = {
            Nome: nome,
            Altura: parseFloat(altura),
            Base: parseFloat(base),
            Latitude : latitude,
            Longitude: longitude,
            IDRegiao: idRegiao
        };

            console.log(JSON.stringify(jazidaData));

        try{
            const response = await fetch(`${fetchURL}/jazidas`, {
                method: 'POST',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(jazidaData)             
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

async function fetchRegioes(){
    try{
        const response = await fetch(fetchURL + "/regioes");
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const regioes = await response.json();
        populateRegiaoSelect(regioes);
        populateRegiaoSelectModal(regioes);
    } catch (error) {
        console.error('Fetch regions error:', error);
    }
}

async function populateRegiaoSelect(regioes) {
    const select = document.getElementById('inputIDRegiao');

    select.innerHTML = '<option value=""></option>';

    regioes.forEach(regiao => {
        const option = document.createElement('option');
        option.value = regiao.IDRegiao; // Assuming the API returns an id field
        option.textContent = `${regiao.IDRegiao} - ${regiao.Topografia}` // Assuming the API returns a nome field
        select.appendChild(option);
    });
        
}

async function populateRegiaoSelectModal(regioes) {
    const select = document.getElementById('inputModalIDRegiao');

    select.innerHTML = '<option value=""></option>';

    regioes.forEach(regiao => {
        const option = document.createElement('option');
        option.value = regiao.IDRegiao; // Assuming the API returns an id field
        option.textContent = regiao.IDRegiao // Assuming the API returns a nome field
        select.appendChild(option);
    });
        
}

async function editJazida(latitude, longitude, nome, altura, base, idRegiao) {
    // Preencher os campos do modal com os dados da jazida
    document.getElementById('inputModalLatitude').value = latitude;
    document.getElementById('inputModalLongitude').value = longitude;
    document.getElementById('inputModalNome').value = nome;
    document.getElementById('inputModalAltura').value = altura;
    document.getElementById('inputModalBase').value = base;
    document.getElementById('inputModalIDRegiao').value = idRegiao;

    // Armazenar as coordenadas atuais para envio no update
    document.getElementById('inputModalLatitude').setAttribute('data-original-latitude', latitude);
    document.getElementById('inputModalLongitude').setAttribute('data-original-longitude', longitude);

    document.getElementById('updateForm').addEventListener('submit', async function(event) {
        event.preventDefault();
        
        const latitudeOriginal = document.getElementById('inputModalLatitude').getAttribute('data-original-latitude');
        const longitudeOriginal = document.getElementById('inputModalLongitude').getAttribute('data-original-longitude');

        const latitude = document.getElementById('inputModalLatitude').value;
        const longitude = document.getElementById('inputModalLongitude').value;
        const nome = document.getElementById('inputModalNome').value;
        const altura = document.getElementById('inputModalAltura').value;
        const base = document.getElementById('inputModalBase').value;
        const idRegiao = document.getElementById('inputModalIDRegiao').value;

        const jazidaData = {
            Nome: nome,
            Altura: parseFloat(altura),
            Base: parseFloat(base),
            Latitude: latitude,
            Longitude: longitude,
            IDRegiao: idRegiao
        };

        try {
            const response = await fetch(`${fetchURL}/jazidas/${latitudeOriginal}/${longitudeOriginal}`, {
                method: 'PUT',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(jazidaData)
            });

            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }

            // Atualiza a tabela com as jazidas modificadas
            await fetchData();
            const modalElement = document.getElementById('modalEditar');
            const modal = bootstrap.Modal.getInstance(modalElement);
            modal.hide(); 
        } catch (error) {
            console.error('Fetch update error:', error);
        }
    });

}

async function updateJazida() {
    document.getElementById('updateForm').addEventListener('submit', async function(event) {
        event.preventDefault();
        console.log("Teste de update");
        const latitudeOriginal = document.getElementById('inputModalLatitude').getAttribute('data-original-latitude');
        const longitudeOriginal = document.getElementById('inputModalLongitude').getAttribute('data-original-longitude');

        const latitude = document.getElementById('inputModalLatitude').value;
        const longitude = document.getElementById('inputModalLongitude').value;
        const nome = document.getElementById('inputModalNome').value;
        const altura = document.getElementById('inputModalAltura').value;
        const base = document.getElementById('inputModalBase').value;
        const idRegiao = document.getElementById('inputModalIDRegiao').value;

        const jazidaData = {
            Nome: nome,
            Altura: parseFloat(altura),
            Base: parseFloat(base),
            Latitude : latitude,
            Longitude: longitude,
            IDRegiao: idRegiao
        };

        try {
            const response = await fetch(`${fetchURL}/jazidas`, {
                method: 'PUT',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(jazidaData)             
            });

            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }

            // Atualiza a tabela com as jazidas modificadas
            await fetchData();
        } catch (error) {
            console.error('Fetch update error:', error);
        }
    });
}

async function deleteJazida(latitude, longitude) {
    try{
        const response = await fetch(`${fetchURL}/jazidas/${latitude}/${longitude}`, {
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

function showJazida(jazidas) {
    const container = document.getElementById('jazida-table-container');
    let tableHTML = `
                    <table class="table">
                    <thead>
                    <tr>
                    <th scope="col">Latitude</th>
                    <th scope="col">Longitude</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Altura</th>
                    <th scope="col">Base</th>
                    <th scope="col">ID Região</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody class="table-group-divider">`;

    jazidas.forEach(jazida => {
        tableHTML += `
                     <tr>
                     <th scope="row">${jazida.Latitude}</th>
                     <th>${jazida.Longitude}</th>
                     <td>${jazida.Nome}</td>
                     <td>${jazida.Altura}</td>
                     <td>${jazida.Base}</td>
                     <td>${jazida.IDRegiao}</td>
                     <td><button onclick="editJazida('${jazida.Latitude}', '${jazida.Longitude}', '${jazida.Nome}', ${jazida.Altura}, ${jazida.Base}, ${jazida.IDRegiao})" 
                            type="button" 
                            data-bs-toggle="modal"
                            class="btn btn-warning" 
                            data-bs-target="#modalEditar" 
     c                      lass="btn btn-warning">Editar</button></td>
                     <td><button onclick="deleteJazida('${jazida.Latitude}','${jazida.Longitude}')" type="button" class="btn btn-danger">Excluir</button></td>
                     </tr>`;
    });

    tableHTML += `
             </tbody>
             </table>`;

    container.innerHTML = tableHTML;
}

fetchData();
fetchRegioes();
createJazida();
