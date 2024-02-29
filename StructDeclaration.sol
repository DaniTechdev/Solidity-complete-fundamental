// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


struct Todo{
    string text;
    bool completed;
}

import "./StrcutDecaltion.sol"

contract Todos{
    //An array of "Todo" struct

    Todo[] public todos;
}