pragma solidity >=0.7.0 <0.9.0;

contract Odemeler{
    address payable public investor;

    function payMoney() external payable {
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function sendMoney() external payable {
        investor = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        investor.transfer(2 ether);
        address payable investor2 = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
        investor2.transfer(1.5 ether);
    }

}