// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

/// @title MerkleAirDrop
/// @author Contzo
contract MerkleAirDrop {
    // List of allowed addresses to claim tokens
    // Allow someone in the list to claim tokens
    address[] public claimers;
    bytes32 private immutable I_MERKLEI_ROOT;
    IERC20 public immutable I_AIRDROP_TOKEN;

    constructor(bytes32 merkleRoot, IERC20 airdropToken) {
        I_MERKLEI_ROOT = merkleRoot;
        I_AIRDROP_TOKEN = airdropToken;
    }

    function claim(address account, uint256 amount, bytes32[] memory merkleProof) external {

      bytes32 leaf= keccak256(keccak256(abi.encode(account, amount))); // calculate the leaf node using the receiver address and the amount
    }
}

