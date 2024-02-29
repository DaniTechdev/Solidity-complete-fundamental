// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


contract Payable {
 //payable address can recieve Ether

 address payable public owner;


//payable constructor can recieve Ether
constructor()payable {
    owner = payable(msg.sender);
}

//Function to deposit Ether into  this contract
//Call this function along with some Ether
//The balance of this contract will be authimatically updated
function deposit() public payable{}

//call this fucntion along with some ether.
//The function will throw an error since this function is not payable

function notPayable() public {}


//function to withdraw  all Ether from this contract

function withdraw() public {
    //get the amount of ether stored in this ontract
  //note address(this)  means the contract

    uint amount = address(this).balance;

    //send all Ether to owner
    //Owner can receive Ether since the address of the owner is payable
    (bool success,) = owner.call{value: amount}("");
    require(success, "Failed to send Ether");
}
    //function to transfer Ether from this contract to address from input

    function transfer(address payable _to, uint _amount) public{
        //Note that "to" is declared as payable
        (bool success,) = _to.call{value:_amount}("");
        require(success, "Fail to send Ether");

    }   
}


