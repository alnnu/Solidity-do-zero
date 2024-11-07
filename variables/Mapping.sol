// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Mapping {

    //mapping
    //can use for simulate a data base
    //mapping(Key => value) name;
    mapping(uint => string) public users;

    struct Book {
        string title;
        string author;
    }

    mapping (uint => Book) public books;

    mapping(address => mapping (uint => Book)) public myBooks;

    constructor() {
        // Adding values in mapping
        users[0] = "Adan";
        users[1] = "Bruce";
        users[3] = "Joy";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

}

