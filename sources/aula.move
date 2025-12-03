
module aula::helloworld{

//print mostrar na tela

use std::debug::print;
use std::string::utf8;
//std é o pacote principal e está trabalhando com o debug

fun pratica(){
  print(&utf8(b"Primeiro código em MOVE!, 02/12/2025."));


}

fun soma(){
    let x = 7;
    let y = x + x;
    print(&y);
}

#[test]
fun test(){
 pratica();
 soma();
}
}
//sempre que cria algo tem que usar a função