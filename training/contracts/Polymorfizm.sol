// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Poly{
    function sum(int a, int b) public pure returns(int){
        return a+b;
    }

    function sum(int a, int b, int c) public pure returns(int){
        return a+b+c;
    }

    function sum(string memory a, string memory b) public pure returns(string memory, string memory){
        return (a,b);
    }
    // string ifadeleri memory ile birlikte kullanabiliriz. Sonuc bize iki deger (0:..., 1:...) olarak gelecektir.
}