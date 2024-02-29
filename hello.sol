// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract MyFirstContract {
    // string public hey = "Hey Dani";
    // uint256 public no = 4;

  string public hey ;
    uint256 public no ;  

    //updating the data above with the help of a constructor
    //contructor is a special function in solidity which will run authomatically anytime we deploy the contract

    // constructor(string memory _hey, uint _no){
    //     hey = _hey;
    //     no = _no;
    // }

    //using function to update state variables

    function addInfo(string memory _hey, uint _no) public {
        hey = _hey;
        no = _no;
    }

    
    
}




