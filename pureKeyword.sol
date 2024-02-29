// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract PureKeyword{

    uint256 num1 = 4;
    uint256 num2 =10;

    function getData() public pure returns(uint256, uint256){
        
        uint256  muNum1 = 10;
        uint256    muNum2= 50;

        // uint256 product = muNum1 *  num1;
        // uint256 total = muNum2 * num2;


        // return (product, total);
        return (muNum1, muNum2);
    }
}