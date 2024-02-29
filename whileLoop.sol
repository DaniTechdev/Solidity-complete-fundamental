// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;


contract  Whileloop{

//Sythex

// while(condition){
//     statment or block of code to be executed if the condition is true
// }

uint256[]  data;
uint8 k = 0;

function Loop() public   returns(uint256[] memory){

    while(k<5){
        // k=k+1;
        k++;
        data.push(k);
    }
    return data;
}

}

