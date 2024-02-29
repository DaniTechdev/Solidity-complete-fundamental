// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


//Base contract X
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

//Base contract Y

contract Y{
  string public text;

  constructor (string memory _text){
    text=_text;
  }
}

//There are 2 ways to initialize parent contract with parameterss

//1 Pass the parameters here in the inheritance list.

contract B is X("Input to X"), Y("Input to Y"){

}

//2 Pass the paramter in the contructor

contract C is X,Y {
  //Pass the paramter here in the contructor
  //similar to function modifiers

  constructor (string memory _name , string memory _text) X(_name) Y(_text){

  }
}


//Parent constructor are always called in the order of inheritanc
//regardless of the order of the paent contracts listed in the
//constructor of the child contract.abi


//order of the constructor called
//1. X
//2.Y
//3.D

contract D is X, Y{
  constructor() X("X is called") Y("Y is called"){

  }
}

//order of the constructor called
//1. X
//2.Y
//3.E

contract E  is X, Y{
  constructor() X("X is called") Y("Y is called"){
    
  }
}