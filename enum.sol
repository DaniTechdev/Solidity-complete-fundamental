// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;

contract Enum {
    //Enum represemting shipping status
    
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }


    Status public status;


    //Default value is the first element listed in
    //definition of the type, in this case "Pending"

   
    //Returns uint
        // Pending - 0
        // Shipped- 1
        // Accepted - 2
        // Rejected - 3
        // Canceled - 4
        //The numbering is just like array index

    function get() public view returns(Status){
        return status;
    }

//Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }
    
   //You can update to a specific enum like this;
    function cancel() public {
        status = Status.Canceled;
    }

    //delete resets the enum to its first value, 0
    function reset() public{
        delete status;
    }
}