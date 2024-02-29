// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;

//Function Modifier

//Import Notes

//---Modifiers are code that can be ran before and after the function call
//---Generally used for 3 resons
//---1 Restrict access 2 Validation 3 Guard against reentrancy hack


contract FunctionModifier {

    address public owner;
    uint public x =10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner (){
        require(msg.sender == owner,"Not owner");
        _;
    }
//let's validate address

modifier validateData(address _addr){
    require(_addr !=address(0), "Not valid adress");
    _;

}


function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner){
    owner = _newOwner;
}

//using modifier to prevent reentrance attack
modifier noReentrancy(){
    require(!locked,"No reentrancy");

    locked = true;
    _;
    //next means else, change it back to false
    
    locked = false;
}

function decrement(uint256 i) public noReentrancy{
    x-=1;
    
    if(i>1){
        decrement(i-1);
    }
}
}