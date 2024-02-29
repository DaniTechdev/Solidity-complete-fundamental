// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

//VIEW

contract ViewKeyWord{

    uint256 public Num1=2;
    uint256 public  Num2=7;

    // function getResults() public view returns(uint256,uint256){
    //     return (Num1,Num2);
    // }

    // function getResults() public view returns(uint256 product, uint256 total){
    //     // uint256 num1 =20;
    //     // uint256 num2 = 30;

    //     // Num1 +=5;
    //     // Num2 +=7;

    //     product = Num1 * Num2;
    //     total = Num1 + Num2;
    //     return (product, total);

    // }

    
    function getResults() public view returns(uint256 , uint256 ){
        // uint256 num1 =20;
        // uint256 num2 = 30;

        // Num1 +=5;
        // Num2 +=7;

        uint256 product = Num1 * Num2;
        uint256 total = Num1 + Num2;
        return (product, total);

    }
}