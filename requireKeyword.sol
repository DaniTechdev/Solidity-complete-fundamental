// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;


//Solidiy Error handling
//....require Statement

contract Require{

    function checkInput(uint256 _input) public returns(string memory){
        require(_input>=0, "invalid uint8");
        require(_input <=255, "Invalid uint8");
   //now if someone provides a valid number we will return the return statement which is string

   return "Input is uint8";
    }

    function Odd(uint256 _input) public view returns(bool){
        require(_input % 2 !=0);
        return true;
    }
}