// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract A{
    using Math for int;     //int ifadeler icin Math kütüphanesini kullan.
    function div(int a, int b) public pure returns(int){
        return a.div(b);
    }
}

library Math{
    function div(int a, int b) public pure returns(int){
        require(b!=0, "the donominator is zero");
        return a/b;
    }

    // a sayisini b ye bölmek istedigimizde b 0 olarak girilirse, olusturdugumuz Math kütüphanesi buna izin vermeyecektir.
}