// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;



contract NFTCount {
    uint public numberOFNft ;

    //check total number of NFT
    function checkTotalNFT () public view returns(uint256){
return numberOFNft;
    }

    //This function will increment the NFT number;
    function addNFT() public{
        numberOFNft +=1;
    }

    //This function  will delete the NFT by 1;
    function deleteNFT() public{
        numberOFNft-=1;
    }
}