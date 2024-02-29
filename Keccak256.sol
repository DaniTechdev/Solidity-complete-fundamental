// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


contract HashFunction {
    function hash(
        string memory _text,
        uint _num,
        address _addr
    ) public pure returns (bytes32){

        // solidity bytes32 =  0xa477d97b122e6356d32a064f9ee824230d42d04c7d66d8e7d125a091a42b0b25

        return keccak256(abi.encodePacked(_text,_num,_addr));
}


// Example of hash collision
// Hash collision can occu when you pass more than one dynamic data type
// to abi.encodePacked. In such case, you should use abi.encode instead.

function collision (string memory _text, string memory _anotherText)
public 
pure
returns(bytes32){
    //we will get output like thsi
    //encodePacked(AAA,BBB) -> AAABBB
     //encodePacked(AA,ABBB) -> AAABBB
 return keccak256(abi.encodePacked(_text,_anotherText));

}


function solidityWord(string memory _textSolidty) public pure returns(bytes32){
    return keccak256(abi.encodePacked(_textSolidty));
}
}


contract GuessTheMagicWord {
    // bytes32 public answer = 0x60298f78cc0b47170ba79c10aa3851d7645bd96f2f8e46a19dbc777c36fb0c00;
    bytes32 public answer = 0xa477d97b122e6356d32a064f9ee824230d42d04c7d66d8e7d125a091a42b0b25;

    //Magic word is "solidity"

    function guess(string memory _word) public view returns (bool) {
        return keccak256(abi.encodePacked(_word)) == answer;

    }



}