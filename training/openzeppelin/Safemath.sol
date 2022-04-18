// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";

contract Safemath {
    using SafeMath for uint;
    uint public a;
    uint public b;
    uint public sum;
    uint public reminder;

    function add() public {
        sum = a.add(b);
    }

    function div() public {
        reminder = a.div(b);
    }

}