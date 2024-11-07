// // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State Varibles (save in block chain)
    uint public myUint = 1; 
    uint256 public myuINT256 = 1;
    uint8 public myUint8 = 1;


    string public text  = "hello word"; //see as a text
    bytes32 public myBytes32 = "hello"; //see as an array

    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // A block chain address

    //strucs
    //define the struct
    struct MyStruct {
        uint id;
        string name;
    }
    //crete the struct 
    MyStruct public myStruct = MyStruct(1,"aaa");



    //Arrays
    uint[] public array = [1,2,3];

    string[] public sArray = ["a", "b"];

    uint[][] public matrix = [[1,2,3], [4,5,6]];


    function addValue(uint value) public {
        array.push(value);
    }

    function getlenth() public view returns(uint) {
        return array.length;
    }


    // Local Varibles ( in a function )
    function getValue() pure public returns(uint) {
        // pure = dont modify the block chain
        uint value = 1;
        return value;
    }
}
