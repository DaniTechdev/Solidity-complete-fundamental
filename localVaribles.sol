// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract LocalVariables{

uint256 public myNumber;

//function for local variables

function local()public returns(address, uint256,uint256 ){
    //Varibales define inside the function scope
    //Not store on the blockachain

    uint256 i = 435;
    myNumber = i;
    i+=45;
    
    address myAddress = address(1);
    return (myAddress,myNumber,i);

}

}