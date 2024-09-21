//var fetchURL = "https://buys-retailers-recommend-additionally.trycloudflare.com"
var fetchURL = "http://localhost:8080"

async function fetchData() {
    try{
        const response = await fetch(fetchURL + "/relatorio");
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const data = await response.json();
        createTable(data);
    } catch (error) {
        console.error('Fetch list error:', error);
    }
}

function createTable(data) {
    const tableContainer = document.getElementById('relatorio-table-container');
    let table = '<table class="table"><thead><tr>' +
                '<th>IDColonia</th><th>EmpresaColonia</th><th>LatitudeJazida</th>' +
                '<th>LongitudeJazida</th><th>SiglaRes</th><th>NomeResidencia</th>' +
                '<th>SiglaDep</th><th>NomeDepartamento</th><th>SiglaLab</th>' +
                '<th>NomeLaboratorio</th><th>IDHumano</th><th>NomeHumano</th>' +
                '<th>CargoHumano</th><th>NomePesquisa</th>' +
                '<th>NomeEquipamento</th><th>UtilidadeEquipamento</th>' +
                '<th>IDCaminhao</th><th>IDEscavadeira</th></tr></thead><tbody>';

    data.forEach(row => {
        table += '<tr>' +
                 `<td>${row.IDColonia}</td>` +
                 `<td>${row.EmpresaColonia}</td>` +
                 `<td>${row.LatitudeJazida}</td>` +
                 `<td>${row.LongitudeJazida}</td>` +
                 `<td>${row.SiglaRes}</td>` +
                 `<td>${row.NomeRes}</td>` +
                 `<td>${row.SiglaDep}</td>` +
                 `<td>${row.NomeDep}</td>` +
                 `<td>${row.SiglaLab}</td>` +
                 `<td>${row.NomeLab}</td>` +
                 `<td>${row.IDHumano}</td>` +
                 `<td>${row.NomeHumano}</td>` +
                 `<td>${row.CargoHumano}</td>` +
                 `<td>${row.NomePesquisa}</td>` +
                 `<td>${row.NomeEquipamento}</td>` +
                 `<td>${row.UtilidadeEquipamento}</td>` +
                 `<td>${row.IDCaminhao}</td>` +
                 `<td>${row.IDEscavadeira}</td>` +
                 '</tr>';
    });

    table += '</tbody></table>';
    tableContainer.innerHTML = table;
}

fetchData();
