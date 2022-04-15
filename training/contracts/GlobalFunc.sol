// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract GlobalFunctions{
    uint public msgValue;

    function getBalance() public view returns(uint) {
    return address(this).balance;
    }

// block.number = blok numarasi
// block.timestamp = block tarihi (1970'den beri saniye olarak tutulan time degeri)
// msg.sender = islemi yapan
// msg.value = göndermek istenilen tutar
// msg.data = yapilan islemdeki veriler

    function getValues() public view returns (uint blockNumber, uint timeStamp, address msgSender, bytes calldata msgData){
        return (block.number, block.timestamp, msg.sender, msg.data);
    }

    function paytoContract() payable public{
        msgValue=msg.value;
    }

}