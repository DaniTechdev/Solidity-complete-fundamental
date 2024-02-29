// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;


//DoWhileLoop
    contract DoWhileLoop{

        //Synthex
    // do{
    // // block of statement to be executed;
    // } while(condition)

    uint256[] data;
    uint8 j=0;

 function doWhileLoop() public returns(uint256[] memory ){
 do{
        j++;
        data.push(j);
    } while(j<5);
    return data;
 }
   
}

