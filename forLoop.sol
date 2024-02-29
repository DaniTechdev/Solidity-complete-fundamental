// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;


contract ForLoop{

    uint256[] data;
    

    //Synthex
    // for(initialisation; test condition; iteration statement){
    //     stetement or block of code to b executed if the condition is fulfilled;

    // }

    function Loop() public returns(uint256[] memory){
        for(uint256 i=0; i<5; i++){
        data.push(i);
    } 
      return data;
    }

   
}