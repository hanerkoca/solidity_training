// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Toyota{
    Car public newCar;
    function deploy() public{
        newCar = new Car("blue");       //deploy ile "Car" adinda yeni bir contract cagiririz.
    }                                   //rengini default olarak blue verdik.

    function change() public{
        newCar.changecolor("red");      //change fonksiyonu ile rengi red e cevirebiliriz.
    }                                   //diger kontrattaki fonksiyonu kullaniyor.
}

contract Car{
    string public color;
    constructor(string memory _color) public{   //deploy edildiginge bu contract cagirilir burada
        color=_color;                           //"Car" kontratinin rengi blue olarak olusturulur.
    }                                           //constructor ile baslangic degeri veriyoruz.

    function changecolor(string memory _newColor) public{   //"Car" contractin icinde renk degistirmek istersek
        color=_newColor;                                    //string ifade ile kendimiz girebiliriz.
    }
}
