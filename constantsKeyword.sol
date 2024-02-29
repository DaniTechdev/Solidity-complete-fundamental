// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


//Constants

contract Constants{

    address public constant myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

function getConstant() public view returns(address){
    return myAdd;
}
}