// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


contract IfElse {

    uint public myNum = 5;
    string public myString;

    // function get(uint256 _num) public returns (string memory){
    //     if(_num==5){
    //         myString ="HEy the value of myNum is 5";
    //     } else if(_num == 4){
    //         myString = "Not 5";
    //     } else{
    //         myString = "Hey dani";
    //     }
    // }

    function shortHand(uint256 _num) public  returns(string memory){
        // if(_num==5){
        //     myString="Ticket bought";
        // } else{
        //     myString="Review number, not 5"
        // }
    // }

    return _num == 5? myString ="5,Ticket bought": myString="Review number, not 5";
}
}