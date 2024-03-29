// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


contract Fallback{
    event Log(string func , uint gas);
     
     //Fallback function must be declared as external
     fallback() external payable {
        //send/ transfer( forwards 2300 gas to this fallback function)
        //call (forwards all the gas)

        emit Log("fallback", gasleft());
     }
    

    //Receive is a variant of fallback that is triggered when msg.data is empty
    receive() external payable {
        emit Log("receive", gasleft());
    }


    //Helper function to check the balance of this contract
    
    function  getBalance() public view returns(uint){
        return address(this).balance;
    }
    
    }




    contract SendToFallback {

        function transferToFallback (address payable _to) public payable {
            _to.transfer(msg.value);
        }

        function callFallback (address payable _to) public payable{
            (bool sent,) = _to.call{value:msg.value}("");
            require(sent,"Failed to send Ether");
        }
    }
    