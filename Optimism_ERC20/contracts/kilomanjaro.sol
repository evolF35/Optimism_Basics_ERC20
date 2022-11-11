// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract kilomanjaro is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("kilomanjaro", "KILO") {
        _mint(msg.sender, initialSupply);
    }

    function mint(uint256 amount)external onlyOwner {
        _mint(msg.sender,amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender,amount);
    }

}
