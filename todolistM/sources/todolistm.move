module todolistm::todolistm{

    //importar as ferramentas iremos utilizar, importar bibliotecas
    use std::string::String;
    use sui::object;
    use sui::transfer;
    use sui::tx_context;

    //nome estrutura tem que ser maisculo
    // key unico e store para armazenar
    public struct Todolistm has key, store {
        id: UID,
        //ID unico
        items: vector<String>,
        // vector armaze vários conteudos textuais
    }

    // mut variavel que vai ser mudada
    public fun new(ctx: &mut TxContext) {
        //variavel auxiliar para chamar a estrutura
        let list = Todolistm {
        //como vai preencher os atributos
            id: object::new(ctx),
            items: vector[],
        };
        //onde será enviado o store
        transfer::transfer(list, tx_context::sender(ctx));
    }

   ///adicionar item
   public fun add_item(list: &mut Todolistm, item: String){
    list.items.push_back(item);
   }
}