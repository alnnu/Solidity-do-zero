// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract HotelRoom {
    // Book a Hotel roon
    // will use:
    // Ether payments
    // Modifiers
    // Visibility
    // Events
    // Enums


    // payble means that this address can recive payments
    address payable public owner;

    // enum
    enum Status { Vacant, Occupied}

    Status public  current;

    event Occupy(address _occupant, uint _value);

    constructor() {
        owner = payable(msg.sender);
        current = Status.Vacant;
    }

    modifier onlyWhileVacant {
        //modify the function
         // check status
        // require stop function execution if is false
        require(current == Status.Vacant, "Currently occupied"); 
        _;
    }

    modifier costs(uint ammount) {
       
        //check value
        require(msg.value >= ammount, "not enough ether");
        _;
    }

    function book() public payable  onlyWhileVacant costs(2 ether){
        
        //transfer ether
        (bool _sent, bytes memory _data) = owner.call{value: msg.value}("");

        require(_sent);

        current = Status.Occupied;

        emit Occupy(msg.sender, msg.value);
    }
}
