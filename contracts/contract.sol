// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

contract first {
    string public student;
    string public title;

    constructor (string memory titleName) {
        title = titleName;
    }

    function getName (string memory studentName) public {
        student = studentName;
    }
    
    function greet () public view returns (string memory){
        string memory greeting = "Hello" ;
         return string(abi.encodePacked(greeting,student));
    }
} 