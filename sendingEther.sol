// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


contract ReceiveEther{
    /*
    which fucntion is called , fallback() or receive()?

                    send Ether
                        |
                msg.data is empty?
                    /    \
                    yes    no
                    /        \
        receive() exist?     fallback()
                */                


        //fucntion to receive Ether msg.data must be empty
        receive() external payable {}

        //Fallbackk function is called when msg.data is not empty

        fallback() external payable{}


        function getBalance() public view returns (uint){
            return address(this).balance;
        }
            }




contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        //This function is no longer recommended for sending Ether
_to.transfer(msg.value);   

}

 function sendViaSend(address payable _to) public payable {
    //send returns a boolean value indicating sucess or failure
    //This fucntion is no longer recommending for sending Ether

     bool sent =_to.send(msg.value);
     require(sent, "Failed to send Ether");

 }

 function sendViaCall (address payable _to) public payable{
    //Call returns a boolean value indicting sucess or failure
    //This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value:msg.value}("");
        require(sent, "Failed to send Ether");
    
 }
}