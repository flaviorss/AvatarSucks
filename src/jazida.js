var fetchURL = "https://buys-retailers-recommend-additionally.trycloudflare.com"

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
    } catch (error) {
        console.error('Fetch regions error:', error);
    }
}

async function populateRegiaoSelect(regioes) {
    const select = document.getElementById('inputIDRegiao');

    select.innerHTML = '<option value="">Choose...</option>';

    regioes.forEach(regiao => {
        const option = document.createElement('option');
        option.value = regiao.IDRegiao; // Assuming the API returns an id field
        option.textContent = regiao.IDRegiao // Assuming the API returns a nome field
        select.appendChild(option);
    });
        
}

async function updateJazida() {
    try{
        
    } catch (error){
        console.error('Fetch update error:', error);
    }
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
                     <td><button onclick="test()" type="button" class="btn btn-warning">Editar</button></td>
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
