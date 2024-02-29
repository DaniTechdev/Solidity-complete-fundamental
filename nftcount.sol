// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;

contract NFTCount{
    uint256 public numberOFNFT;

    //check total number of NFT
function checkTotalNFT() public view returns (uint256){
    return numberOFNFT;
}

    //This function will increment the NFT Number

    function addNFT() public{
        numberOFNFT +=1;
    }
//THis function will delete the NFT by 1;
function deleteNFT() public {
    numberOFNFT-=1;

}

}