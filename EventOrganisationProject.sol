// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

//Event Ticket

contract EventTicket{

    uint  numberOfTicket;
    uint  ticketPrice;
    uint  totalAmount;
    uint  startAt;
    uint  endAt;
    uint  timeRange;
    string  message = "Buy your first Ticket";

    constructor(uint256 _ticketPrice){

        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeRange =(endAt - startAt)/60/60/24;
        /// 60 / 60 / 24: Divides the time difference in seconds by 60 (seconds per minute), 60 (minutes per hour), and 24 (hours per day) to convert it into days.
    }

    function buyTicket (uint256 _value) public returns(uint256 ticketId){
        //we want to track the number of times the buy ticket is called or number of tickets
        //  numberOfTicket =numberOfTicket + 1;
         numberOfTicket ++;
         //if our ticket is bought we will update the totalAmount with the value of the ticket paied for;
        //  totalAmount= totalAmount + _value;
         totalAmount +=_value;
         //we will assign the ticket id to the number of times the ticket function is called;
         //since every ticket is will have unique id

         ticketId = numberOfTicket;

    }



    function getAmount() public view returns(uint256){
        return totalAmount;
    }




}