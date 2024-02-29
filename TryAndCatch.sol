// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


//External contract used for try/catch

contract Foo{

address public owner;

constructor (address _owner){
    //make sure the owner address is not invalid address 
    require(_owner!=address(0), "invalid address");
    //checking truely to make sure the ownr address is not invalid using assert
    assert(_owner != 0x0000000000000000000000000000000000000001);
    owner = _owner;
}

function myFunc(uint x) public pure returns(string memory){
    //We want to provide any number that is not zero using require

    require(x != 0, "require failed ");

    return "my func was called";
}
}


//another contract to test the try and catch block
contract  Bar{
     event Log(string message);
     event LogBytes(bytes data);

     Foo public foo;

     constructor (){
        //This Foo contract is used for example of try catch with external call

        foo = new Foo(msg.sender);
     }
     
     //Example of try /cathc with external call 
     //tryCatchExternalcall(0) => Log("external call failed");
         //tryCatchExternalcall(1) => Log("my func was called")

    function tryCatchExternalcall (uint _i) public {
        try foo.myFunc(_i) returns (string memory result){
            emit Log(result);
        } catch{
            emit Log("external call failed");
        }
    }

    //Exmple of try / catch with contract creation;
    //tryCatchNewContract (0x0000000000000000000000000000000) =>Log("invalid address")
     //tryCatchNewContract (0x0000000000000000000000000000001) =>LogBytes("invalid address")
     //tryCatchNewContract (0x0000000000000000000000000000002) =>Log("foo con")
       function tryCatchNewContract(address _owner) public {
        try new Foo(_owner) returns (Foo foo){
            //you can use varibale foo here
            emit Log("Foo created");
        } catch Error(string memory reason){
            //catch failing revert() and require()
            emit Log(reason);
        }catch (bytes memory reason){
        //catch failing assert()
        emit LogBytes(reason);
        }
       }




}