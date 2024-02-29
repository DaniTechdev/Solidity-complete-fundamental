// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;


//Solidity Assert

contract AssertStatement{

    bool result;

    function checkOverFlow(uint256 _num1, uint256 _num2) public{
        uint256 sum = _num1 + _num2;
        assert(sum<=255);
        result = true;
    }

    function getResult() public view returns(string memory){
        if(result == true){
            return "No overflow";
        }else{
            return "Overflow exist";
        }
    }
}