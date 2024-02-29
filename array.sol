// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract Array{

    //several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    //fixed sized array, all elements initialized to 0;
    uint[10] public myFixedSizedArr; 

    function get(uint i) public view returns(uint){
        return arr[i];
    }

    //Solidity can return the entire array
    //But this function should be avoided for
    //arrays that can grow indefinitely in length.

    function getArr() public view returns(uint[] memory){
        return arr;

    }

    function push(uint i) public {
        //Append to array
        //This will increase the array length by 1;
        arr.push(i);
    }

    function pop() public{
        //Remove last element from the array;
        //This will decrease the array lenght by 1
        arr.pop();
    }

    function getLenght() public view returns(uint){
        return arr.length;
    }

    function remove(uint index) public{
        //delete does not change the array length.
        //It resets the value at index to it's default value;

        delete arr[index];
    }

    function examples() external {
        //create array in memory, only fixed size can be created 
        uint[] memory a = new uint[](5);
    }

}