document.getElementById("btn").addEventListener("click", async () => {
  const output = document.getElementById("output");
  output.textContent = "Chamando API...";

  try {
    const response = await fetch("http://api.localhost:8080/api/hello");
    if (!response.ok) throw new Error("Retorno(erro): " + response.status);
    const text = await response.text();
    output.textContent = "Resposta: " + text;

  } catch (err) {
    output.textContent = "Erro: " + err.message;
  }
});
