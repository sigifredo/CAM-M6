

function openCloseModalWindow() {
    let liliumMW = document.querySelector('#lilium-mw');
    liliumMW.classList.toggle('opened');
}

window.onload = function() {
    document.querySelector('#btn-lilium').addEventListener('click', openCloseModalWindow);
    document.querySelector('#lilium-mw a').addEventListener('click', openCloseModalWindow);
}