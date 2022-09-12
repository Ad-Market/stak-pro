// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract PurseToken is ERC20("Purse", "Purse") {

    event Mint(address indexed user, uint256 amount);

    function mint(address recipient, uint256 mintAmount) external{
        _mint(recipient, mintAmount);
        emit Mint(recipient, mintAmount);
    }

}