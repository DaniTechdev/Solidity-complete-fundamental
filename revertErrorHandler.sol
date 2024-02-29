// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;


//Revert handler

contract RevertStatement{

    function checkOverFlow(uint256 _num1, uint256 _num2) public view returns(string memory,uint256){
       uint256  sum = _num1+_num2;
        if(sum<0 ||sum>255){
            revert( "Overflow exist");
        }else{
            return ("NO overflow",sum);
        }
    }
}