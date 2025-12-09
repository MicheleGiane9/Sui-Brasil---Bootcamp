
module calculadora::calculadora{


    use std::debug::print;
    use std::string::utf8;

    
    /*Precisa passar referência por isso usa */

    fun soma(x: &u64, y: &u64) : u64{
       *x + *y
    }

 
    fun subt(x: &u64, y: &u64): u64 {
    if (*x >= *y) {
        *x - *y
    } else {
        0
    }
}  
    
    fun multiplica(x: &u64, y: &u64): u64 {
         if (*x >= *y) {
          *x * *y
    } else {
       0
    }
     
}  
fun divide(x: &u64, y: &u64): u64 {
      if (*x >= *y) {
            *x / *y
    } else {
       0
    }
}  

    public fun exe_calculadora(){
        let number1 = 144;
        let number2 = 2;

        print(&utf8(b"Calculadora Basica"));
        print(&utf8(b"Numero 1"));
        print(&number1);
        print(&utf8(b"Numero 2"));
        print(&number2);

        let result_soma = soma(&number1, &number2);
        print(&utf8(b"A soma total:"));
        print(&result_soma);

        let result_subt = subt(&number1, &number2);
        print(&utf8(b"A substracao total:"));
        print(&result_subt);
    
        let result_mult = multiplica(&number1, &number2);
        print(&utf8(b"A multiplicacao :"));
        print(&result_mult);

        let result_div = divide(&number1, &number2);
        print(&utf8(b"A divicao:"));
        print(&result_div);
    }

     #[test]
    public fun calculos(){
       exe_calculadora();
    }

}
