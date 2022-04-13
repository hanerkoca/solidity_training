pragma solidity >=0.7.0 <0.9.0;

contract Country{
    string public name;
    string public flag;
    string private GDP;         // private diger kontratlara bilgi olarak gitmez!
    int public a;
    constructor(int _a){        // baslangic degeri verildigi icin bunlari diger kontratlarda girmemiz gerekli
        a=_a;
    }
}

// Ikinci kontratta turkiyenin country oldugunu belirterek country kontratindaki
// bilgileri de turkey e aktarmis oluruz.
// a degerini Country de parantez icinde veya herhangi bir formül ile verebiliriz!

//Örnek:
/* contract Turkey is Country(2) {      
     uint public sqkm;
     string public primeMinister; */


contract Turkey {      
    uint public sqkm;
    string public primeMinister;
}

contract US is Country, Turkey(){
    uint public sqm;
    string public president;
    constructor(int _a) Country(_a*_a) public{
    }

}