//SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title Bagle Token
/// @author Contzo
/// @notice Bagel token used for Airdrop
/// @dev Inherits the OpenZeppelin ERC20 token
contract BagelToken is ERC20, Ownable {
    /// @notice constrcuts the ER20 token, initializes an owner and mints some tokens
    constructor() ERC20("Bagel", "BGL") Ownable(msg.sender) {
        _mint(msg.sender, 1000000 * 10 ** decimals()); // mint 1,000,000 BGL tokens to the sender
    }

    /// @notice ERC20 mint function
    /// @dev Ownly the owner of the ERC20 protocol can mint
    /// @param to address of the user
    /// @param amount - the token amount to be minted
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
