// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract DataType{
//the default value of boolean is false
    bool public hey;
    bool public no = true;

//     //Unit stands for unsigned integer, meaning non negative integers

//     uint8// rnage 0- 2 ** 8-1//255

// uint16 //ranges 0 - 2 ** 16-1/ 65535


// uint256// //ranges 0 - 2 ** 256-1/ 1.1579209e + 77
// //

// uint8 public u8 = 1;
// uint public u256 = 456;
// uint public u = 123;



//Negative Number
//Negatve numbers are allowed from int TYPES, like uint , different ranges are available from initail

// int256 ranges from -2**255 to 2**255-1 = 5.7896045e+76, -5.7896045e+76
// int128 ranges from -2**127 to 2**127-1 = 

// int8 public i8 = -1;
// int public i256 = 456;
// int public i = -1234;

//Now, you can add min and max int

// int public minInt = type(int).min;
// int public maxInt = type(int).max;


// uint256 public maxUint = type(uint).max;


//ARRAY

//In  solidity, the data types byte represent a sequence of bytes and generally there are two types

//--- fixed-sized bytes array
//dynamically-sized bytes array

//when you define byte, in smart contract it's represent dynmic bytes array


// bytes1 public  a;
// bytes1 public  b;


// bytes1 public  a = 0xb5;//[010010010]
// bytes1 public  b =0x56;//[010101010]



//ADDRESS

// address public heyy;
// address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


//Default values of Datatype as solidity don't have null or undefined.

//Default Value

bool public defaultBol; //false
uint public number ; //0
int public defaultInt ;//0
address public heyyy;//0x000000



}


