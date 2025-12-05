/*
/// Module: exercicio1
module exercicio1::exercicio1;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


/*Requisitos:
Nome (use vector<u8> ou b"texto")
Idade (use u8)
Altura em centímetros (use u64)
Tem carteira de motorista (use bool)
Cidade natal
*/

module exercicio::dados_pessoais {
    use std::debug::print;
    use std::string::utf8;
    
    public fun meus_dados(nome: vector<u8>, idade: u8, altura: u64, carteira: bool, cidade:vector<u8>) {
    
    print(&utf8(nome));
    print(&idade);
    print(&altura);
    print(&carteira);
    print(&utf8(cidade));

    }
    
    #[test]
    fun teste_dados() {
        meus_dados(b"Michele Giane", 30, 1 , true, b"Natal");
        meus_dados(b"Augusto Lima ", 25, 2 , false, b"Pernanbuco");
        meus_dados(b"Fernando Nunes ", 18, 2 , true, b"Rio de Janeiro");
    }
}