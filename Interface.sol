// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract 
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;


//Solidity while-loop
pragma solidity ^0.8.13;

contract Counter{
    uint public count;

    function increment() external {
        count+=1;
    }
}


//define an interface

interface Icounter{
    function count() external view returns(uint);

    function increment() external;
}


contract  MyContract {
    function incrementCounter( address _counter) external {
        Icounter(_counter).increment();
    }

    function getCount(address _counter) external view returns(uint) {
        return Icounter(_counter).count();
    }
}


//Uniswap example
interface UinswapV2Factory{
 function getPair(address tokenA, address tokenB)
 external
 view 
 returns(address pair);
}


interface UniswapV2pair{
    function getReservers()
    external
    view
    returns(
        uint112 reserve0,
        uint112 reserve1,
        uint32 blockTimestamplast
    );
}

// contract UniswapExample {
//     address private factory = 0x56cbbjbejb6782787fhrjcb;
//     address private dai= 0x6hjhnej7874774837yealggkj;
//     address private weth = 0xjdejjebduefbkgflhjkfukrgqf;

//     function getTokenReserves() external view returns (uint, uint){

//         address pair = UinswapV2Factory(factory).getPair(dai,weth);
//         (uint reserve0, uint reserve1, ) = UniswapV2pair(pair).getReservers();

//         return (reserve0, reserve1);
//     }
// }