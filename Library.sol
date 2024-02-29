// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

library  Math {

function sqrt(uint y) internal pure returns (uint z){
    if(y>3) {
        z=y;
        uint x = y/2 +1;
        while(x<z){
            z=x;
            x = (y/ x + x)/2;
        }
    } else if(y != 0) {
        z = 1;
    } 
    //else z = 0 (default value of z as z is a uint type)
}


}


contract TestMah {
    function testSquareRoot(uint x) public pure returns (uint){
        return Math.sqrt(x);
    }
}

//Array function to delete element as index and reorganise the array 
//so that there are no longer between the elements.

library Array {
    function remove(uint[] storage arr, uint index) public {
        //Move the last element into the place to delete
        require(arr.length > 0,"Can't remove from empty array");
         arr[index]= arr[arr.length-1];
         arr.pop();
    }
}


contract TestArray {
    //initialising the library using the "using" keyword in solidity and its type uint[]
    using Array for uint[];

    uint[] public arr;

    function testArrayRemove() public {
        for (uint i=0; i< 3; i++){
            arr.push(i);
        }

        arr.remove(1);
        assert(arr.length == 2);
        assert(arr[0] == 0);
        assert(arr[1] ==2);
        

    }
}