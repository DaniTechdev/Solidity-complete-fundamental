// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


contract GlobalVaribales{

// address public owner;

//this means the person/address that will run the deployment transaction will authomatically become the owner of the contract


//other  global variables

address public owner;
address public myBlockharsh;
uint256 public difficulty;
uint256 public gasLimit;
uint256 public number;
uint256 public timestamp;
uint256 public value;
uint256 public nowOn;
address public origin;
uint256 public gasprice;
bytes public callData;
bytes4 public Firstfour;

constructor(){
    owner = msg.sender;
    //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    myBlockharsh = block.coinbase;
    difficulty= block.difficulty;
    // gasLimit = tx.gasLimit;
    timestamp = block.timestamp;
    gasprice=tx.gasprice;
    origin= tx.origin;
    callData=msg.data;
    Firstfour = msg.sig;


}





}
