// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


    contract A{
        function foo() public pure virtual returns (string memory){
            return "A";
            
        }
    }

  //contract inherit the other contract by  using the keyword "is"
    contract B is A {
        //overide A.foo()
        function  foo() public pure virtual override returns(string memory){
            return "B";
        }
    }

    contract C is A {
        //Override A.foo()
        function foo() public pure virtual override returns (string memory){
            return "C";
        }
    }

    //Contracts can inherit from multiple parent contracts
    //when a function is called that is defined multiple times in 
    //differets contracts, parent contracts are searched from 
    //right to left , and in depth-firt manner;

    contract D is B,C{
        //D.foo() returns "C"
        //since C is the right most parent contract with function foo()
        function foo() public pure override(B,C) returns (string memory){
            return super.foo();
        }
    }

    contract E is C,B {
        //E.foo() returns "B"
        //since B is the right most parent contract with function foo()

        function foo() public pure override(C,B) returns (string memory){
            return super.foo();
        }
    }

    //Inheritance must be ordered from "most base-like" to "most derived"
    //Swapping the order of A and B will throw a compilation error.

    contract F is A,B {
        function foo() public pure override(A,B) returns (string memory){
            return super.foo();
        }
    }