// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;


        //      A
        //     / |
        //    B   C 
        //     \ /
        //      D

    contract A {
        // This is called an  event. You can emits events from your function
        // and they are logged into the trnasaction log.
        // In our case, this will be useful for tracing function calls

        event Log(string messgae);

        function foo() public virtual {
            emit Log("A.foo called");
        }

        function bar() public virtual {
            emit Log("A.bar called");
        }
    }


    contract B is A {
        function foo() public virtual override {
            //We have access to the state variable for event 
            //therefore we can call the event(emit)
            emit Log("B.foo called");
            A.foo();
        }

        function bar() public virtual override{
            emit Log("B.bar called");

            super.bar();
        }
    }

    contract  C is A {
        function foo() public virtual override {
            emit Log("C.foo is called");
            A.foo();
        }

        function bar() public virtual override {
            emit Log("C.bar is called");

            super.bar();
        }
    }


    contract D is B , C {
        //Try 
        // - call D.foo and check the transaction logs
        //Although D inherits A,B and C, it only called C and then A
        //- Call D.bar and check the transaction logs
        //D called C, then B , and finally A.
        //Although super was called twice (by B and C) it only called A

        function foo() public  override (B,C) {
            super.foo();

        }
        function bar() public  override (B,C){
            super.bar();
        }
    }