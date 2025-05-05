/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */

function exibeData() {
    document.getElementById("demo").innerHTML = Date();
}
 
function exibir(par1) 
{
    if (par1 === false) {
        document.getElementById("minhaDiv").style.display = "none";
        document.getElementById("btnEsconde").style.display = "none";
        document.getElementById("btnMostra").style.display = "inline";
    }
    else {
        document.getElementById("minhaDiv").style.display = "inline";
        document.getElementById("btnEsconde").style.display = "inline";
        document.getElementById("btnMostra").style.display = "none";
    }
}
