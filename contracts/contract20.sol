// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract first as ERC721  {
    using Counters for Counters.counter;

    constructor () ERC721, Ownable {}   
    
} 