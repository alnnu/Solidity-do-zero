// // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Counter {
    //Code goes here...

    uint public count;

    constructor() {
        count = 0;
    }


    function incrementCount() public returns(uint){
        count ++;
        return count;
    }
}
