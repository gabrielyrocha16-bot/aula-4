
const botoes = document.querySelectorAll("button");

botoes.forEach(function (botao) {
    let curtiu = false;
    botao.addEventListener("click", botaoClicado);

    function botaoClicado() {
        let texto = botao.querySelector("span");
        if (curtiu === false) {
            texto.textContent++;
            curtiu = true;
            botao.style.opacity = "0.7"; // Efeito visual de clicado
        } else {
            texto.textContent--;
            curtiu = false;
            botao.style.opacity = "1";
        }
    }
});
