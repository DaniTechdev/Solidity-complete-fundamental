// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract Function{

    //functions can return multiple values
    function returnMany() public pure returns (uint, bool, uint){
        return (1,true, 2);
    }
 
    //Return values can be named

    function named() public pure returns(
        uint x,
        bool b,
        uint y
    ) {
        return (1,true,2);
    }

    //Return values can be assigned to their name.
    //in this case the return statement can be omiited.

    function assigned() public pure returns(
        uint x,
        bool b,
        uint y
    ){
        x = 1;
        b = true;
        y = 2;
    }

    //use destructuring assignment when calling another
    //function that returns multiple values

    function destructuringAssignment() public pure returns(
        uint,
        bool,
        uint,
        uint,
        uint
    ){
        (uint i, bool b, uint j) = returnMany();

        //values can be left out.
        (uint x,, uint y)= (4,5,6);

        return (i,b,j,x,y);
    }

    //Cannot use map for either input or output
    //can use array for input

    function arrayInput (uint[] memory _arr) public { }

    //can use array for output

    uint[] public arr;

    function arrayOutput () public view returns (uint[] memory) {
        return arr;
    }



}



//Call function with key-value inputs

contract XYZ {

    function someFunWithManyInputs (
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns(uint){}

 function callFunc() external pure returns(uint){
    return someFunWithManyInputs(1,2,3,address(0),true,"c" );

 }

    function callFuncWithKeyVlue() external pure returns(uint){
        return someFunWithManyInputs({a:address(0),b:true, c:"c", x:1,y:2,z:4}); }

}