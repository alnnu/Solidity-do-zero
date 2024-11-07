// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Ifloop{

    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];

    address owner;

    constructor() {
        owner = msg.sender;
    }


    function countEvenNumbers() public view returns(uint) {
        uint _count = 0;

        for(uint i = 0; i < numbers.length; i++) {
            if(isEven(numbers[i])) {
                _count ++;
            }
        }

        return _count;
    }

    function isEven(uint _number) pure public returns (bool) {
        if(_number % 2 == 0) {
            return true;
        }else {
            return false;
        }
    } 

    function isOwner() public view returns(bool) {
        return (owner == msg.sender);
    }
}
