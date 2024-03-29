// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract Receiver{

    event Received(address caller, uint amount, string message);

    fallback() external payable {
        emit Received(msg.sender, msg.value, "Fallback was called");

    }

    function foo(string memory _message , uint _x) public payable returns (uint){
        emit Received(msg.sender, msg.value, _message);

        return _x + 1;
    }
}


contract Caller{

    event Response(bool success, bytes data);

    //Let's imagine that contract Caller does not have the source code for the
    //contract Receiver, but we do know the address of the contract Receiver and the 
    //call

    function testCallFoo(address payable _addr) public payable {
        //You can send ether and specify a custom gas amount

        (bool success, bytes memory data) = _addr.call{value:msg.value, gas: 5000}(
            abi.encodeWithSignature("foo(string, uint256)", "call foo", 123));

            emit Response(success, data);

    }


    //calling a function that does not exist triggers the fallback function.
     function testCallDoesNotExist(address _addr) public payable {
        (bool success, bytes memory data) = _addr.call{value:msg.value}(
            abi.encodeWithSignature("doesNotExist()")
        ); 

        emit Response(success, data);
     }

}

