/*
    Scripts de JavaScript del CV
 */

const msg = "Cambiando contenido de IFRAME desde addEventListener"

function changeContents(stringUrl, stringBoton) {
    document.getElementById('Cuerpo').setAttribute('src', stringUrl)
    console.log(stringBoton + ' presionado, redirección hacia: ' + stringUrl);
    console.log(msg);
}

document.getElementById('Boton1').addEventListener('click', function () {
    changeContents('html/page1.html', 'Boton1')
})

document.getElementById('Boton2').addEventListener('click', function () {
    changeContents('html/page2.html', 'Boton2')
})

document.getElementById('Boton3').addEventListener('click', function () {
    changeContents('html/page3.html', 'Boton3')
})
