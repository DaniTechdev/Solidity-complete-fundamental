// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;

contract Base {
    //private function can only be called
    //inside the contract
    //contracts that inherits this contract cannot call this function

    function privateFunc() private pure returns (string memory){
        return "private function called";

    }

    function testPrivateFunc() public pure returns(string memory){
        return privateFunc();
    }

    
    //Internal function can be called
    //inside this contract
    //inside contracts that inherit this contract

    function internalFunc() internal pure returns (string memory){
        return "internal function called";
    }


    function testInternalFunc() public pure virtual returns (string memory){
        return internalFunc();
    }

    //public function can be called
    //inside this contract
    //inside contracts that inherit this contract
    //by other contracts and accounts

    function publicFunc() public pure returns(string memory){
        return "Public function called";
    }

    //External functions can be called
    //by other contracts and accounts

    function externalFunc() external pure returns(string memory ){
        return "External function called";
    }

    //THis fucntion will not be compiled since we're trying to call 
    //an external function here.

//     fucntion testExternalFunc() public pure returns (string memory){
//         return externalFunc();
//     }
// }

    //STATE VARIABLES

    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";
    //state varibles cannot be external so this code won't compile
    //  string external externalVAr = "my  external varible"
}


contract Child is Base {
    //Inherited contract do not have access to the private fucntion
    //and state varibales
    //function testPrivateFunc() public pure returns (string memory) {  return privateFunc():}

    //Internal function can be called inside child contracts.

    function testInternalFunc() public pure override returns (string memory){
        return internalFunc();
    }
}
