// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


contract LearnFunction{

    // uint public hey;
    uint256 public   hey;
    // //get data with the help of funtion

    // function getInfo() public view returns(uint256){
    //     return hey;
    // }


    //let's write a function to update data
// we won't use view or return becaus we simple want to update the data

//     function updateData(uint256 _hey) public{
//  hey =_hey;
//     } 

function get(uint256 _a, uint256 _b) public  returns(uint){
    uint256 newNumber = _a + _b;

    hey = newNumber;

    return hey;
}


}

