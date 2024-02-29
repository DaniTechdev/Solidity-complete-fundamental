// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract Event{
    //Event declaration
    //up to 3 parameters can be indexed only but you can have multiple data in it
    //Indexed paramters helps you filter the logs by the indexed parameter;

     event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public{
        emit Log(msg.sender, "Hello World");
        emit Log(msg.sender, "Hello Evm");
        emit AnotherLog();
    }
}