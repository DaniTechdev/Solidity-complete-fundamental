// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;

contract ArrayReplaceFromEnd{

    uint[] public arr;

    //Deleting an element creates a gap in the array
    //one trick to keep the array compact is to
    //move the last element into the place and delete the last element by pop()

    function remove(uint index) public {
        //Move the last element into the place to delete
        arr[index] = arr[arr.length-1];
    //Remove the last element
        arr.pop();
    }

    function test() public {
        arr = [1,2,3,4];
        remove(1);
        // [1,4,3]

        //checking

        assert(arr.length ==3);
        assert(arr[0]==1);
        assert(arr[1]==4);
        assert(arr[2]==3);

        remove(2);
        //[1,4]

        //checking
        assert(arr.length==2);
        assert(arr[0]==1);
        assert(arr[1]==4);
        


    }

}