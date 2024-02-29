// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


contract Mapping{
    //mapping from address to uint

    mapping(address=>uint) public myMap;
    

    function get(address _addr) public view returns(uint){
        //mapping always returns a value
        //if the value was never set, it will return the default value.
        return myMap[_addr];

    }

    function set(address _addr,uint _i) public {
        //update the value of this address
        //Setting id manually

        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        //Reset the value of the default value;
        delete myMap[_addr];
    }
}




contract NestedMappng {
    //Nested mapping(mapping from address to another mapping)
    mapping(address=> mapping(uint =>bool)) public nested;

    function get(address _addr1, uint _i) public view returns(bool){
        //you can get values from a nested mapping
        //even when it is not initialized

        return nested[_addr1][_i];
    }
    //Above, we used nested mapping to check if an address is inside the array with particular id and return true if it exist or false
   


   
   //Function to notify if a user has been created or not;
   function set(
    address _addr1,
    uint _i,
    bool _bool
   )public {
    nested[_addr1][_i] = _bool;
   }


   //function to remove a user from a nested mapping
   function remove(address _addr1, uint _i) public {
    delete nested[_addr1][_i];
   }
}


