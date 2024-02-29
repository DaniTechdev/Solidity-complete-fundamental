// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;

contract A{
    string public name = "Contract A";
    function getName() public view returns(string memory){
        return name;
    }
}

//Shadowing is disallowed in solidity 0.6
//This will not compile
// contract B is A {
//     string public name ="Contract B";
// }

contract C is A {
    //This is the correct way to override inherited state vaviable;
    constructor(){
        name = "Contract C";
    }

    //c.getName returns "Contract C
}