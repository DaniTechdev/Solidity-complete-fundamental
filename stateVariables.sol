// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract StateVariables{

//Few Thing to keep in mind about
//State Variables


string public  myState;
uint256 public myNum;

// constructor (string memory _mystate, uint  _myNum){
//     myState = _mystate;
//     myNum = _myNum;
// }

// uint256[] public myNumber;

function update(string memory _myState, uint _myNum) public {
    myState = _myState;
    myNum = _myNum;
}

}