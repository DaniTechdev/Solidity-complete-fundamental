// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;


   
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

import "./EnumDeclaration";

contract Enum {
    Status public status;
    
}