"use strict";
function op6(id) {
    //INÍCIO - PARTE PADRÃO
    var myWindow = window.open('', 'Calculadora Científica', 'toolbar=0,location=0,menubar=0,width=500,height=300');
    var nomeOp = document.getElementsByTagName('a')[id].innerHTML;
    myWindow === null || myWindow === void 0 ? void 0 : myWindow.document.write(`<html><head><title>${nomeOp}</title></head></html>`);
    function leia(texto) {
        return (myWindow === null || myWindow === void 0 ? void 0 : myWindow.prompt(texto));
    }
    function escreva(texto) {
        return (myWindow === null || myWindow === void 0 ? void 0 : myWindow.alert(texto));
    }
    function fechar() {
        return myWindow === null || myWindow === void 0 ? void 0 : myWindow.close();
    }
    var op = Number(leia("qual operação deseja realizar?\n 1-Adição \n 2-Subtração \n 3-multiplicação \n 4-divisão"));
    switch (op) {
        case 1:
            var num1 = Number(leia("insira o primeiro valor"));
            var num2 = Number(leia("insira o segundo valor"));
            var total = num1 + num2;
            escreva("a soma dos numeros é:" + total);
            break;
        case 2:
            var num1 = Number(leia("insira o primeiro valor"));
            var num2 = Number(leia("insira o segundo valor"));
            var total = num1 - num2;
            escreva("a subtração dos números é:" + total);
        case 3:
            var num1 = Number(leia("insira o primeiro valor"));
            var num2 = Number(leia("insira o segundo valor"));
            var total = num1 * num2;
            escreva("a multiplicação dos numeros é:" + total);
        case 4:
            var num1 = Number(leia("insira o primeiro valor"));
            var num2 = Number(leia("insira o segundo valor"));
            var total = num1 / num2;
            escreva("a divisão dos numeros é:" + total);
    }
}
