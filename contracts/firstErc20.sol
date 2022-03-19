// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FirstERC20 is ERC20, Ownable {

    uint256 public rate = 1000 * 10 ** decimals();

    constructor() ERC20("FirstERC20", "FERC") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function buyTokens (address receiver) public payable{
        uint256 total = msg.value * rate;
        _mint(receiver, total);
    }
}