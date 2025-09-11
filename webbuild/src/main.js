document.addEventListener('DOMContentLoaded', async () => {
  const res = await fetch('api.php');
  const json = await res.json();
  const tbody = document.querySelector('#items-table tbody');
  tbody.innerHTML = '';
  for (const item of json.data) {
    const tr = document.createElement('tr');
    tr.innerHTML = `<td>${item.id}</td><td>${item.name}</td><td>${item.description}</td>`;
    tbody.appendChild(tr);
  }
});
