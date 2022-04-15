// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


// Birden fazla parametrenin baslangic degerlerini constructor icerisinde yapabiliriz.

contract ConstructorContract{
    address public owner;
    int public totalNumber;

    constructor (int _totalNumber) public{
        owner = msg.sender;
        totalNumber = _totalNumber;
    }

    fallback () external payable{}


    // Eger gönderici owner degilse islem gerceklesmez!
    // revert islemi durdurur.

    function getBalance_long_way() public view returns(uint) {
        if(msg.sender == owner){
            return address(this).balance;
        }
        else{
            revert();                 // revert islemi durdurur.
        }                             // Eger gönderici owner degilse islem gerceklesmez!  
    }

    // Yukaridaki fonksiyonun daha sade hali:
    function getBalance() public view returns(uint){
        require(msg.sender == owner, "Only the owner can call the function");
        return address(this).balance;
    }


}