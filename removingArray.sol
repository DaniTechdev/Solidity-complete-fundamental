// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract  ArrayremoveByShifting {

    // [1,2,3] --- remove(1) --> [1,3,3] --> [1,3]
    //   [1,2,3,4,5,6] --- remove(2) --> [1,2,4,5,6,6] --> [1,2,4,5,6]
    //     [1,2,3,4,5,6] --- remove(0) --> [2,3,4,5,6,6] --> [2,3,4,5,6]
    //   [1] --- remove(0) --> [1] --> []

    uint[]  public arr;

    

    function remove(uint _index) public {
        require(_index < arr.length, "index out of bound");

        for(uint i =_index; i < arr.length -1; i++){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }
   

    function test() external {
        arr = [1,2,3,4,5];

        remove(2);
       // [1,2,4,5]

       //below we are testing to see if if the remove function is working
       //if any of the asset reverts , it means the remove funion we created is not working;

       assert(arr[0]==1);
       assert(arr[1]==2);
       assert(arr[2]==4);
       assert(arr[3]==5);
       assert(arr.length==4);
       arr = [1];
       remove(0);

       assert(arr.length==0);

    }

}


 // function remove(uint _index) public {
    //     require(_index < arr.length, "index out of bound");

    //     for(uint i =_index; i < arr.length -1; i++){
    //         arr[i] = arr[i+1];
    //     }
    //     arr.pop();
    // }

 //Here's a simplified explanation:

// Starting Point:

// You start at the box with the index _index.
// Moving Values to the Left:

// For each box from the starting point to the second-to-last box (i < arr.length - 1), you take the value from the current box (arr[i]) and replace it with the value from the next box (arr[i + 1]).
// Example:

// Let's say you want to remove the value at index 2. You start at the box with index 2 and copy the value from the box at index 3 into the box at index 2. Then, you repeat the process for the next box until you reach the second-to-last box.

// Before:

// csharp
// Copy code
// [1, 2, 3, 4, 5]
// After:

// csharp
// Copy code
// [1, 3, 4, 5, 5]
// Array After Loop:

// After the loop, the last box contains a duplicate of the second-to-last value, so you remove the last box.

// Result:

// csharp
// Copy code
// [1, 3, 4, 5]
// In simpler terms, it's like shifting all the values after the specified box one step to the left, closing the gap created by removing the value at the specified index. This ensures that the array remains contiguous, and the removed element is effectively "erased" from the array.

