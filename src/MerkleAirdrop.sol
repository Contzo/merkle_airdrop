// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
/// @title MerkleAirDrop
/// @author Contzo
contract MerkleAirDrop {
    // List of allowed addresses to claim tokens
    // Allow someone in the list to claim tokens
    address[] public claimers;
    bytes32 private immutable i_merkleRoot;
    IERC20 public i_airdropToken;

    constrcutor(bytes32 merkleRoot, IERC20 airdropToken) {
      i_merkleRoot = merkleRoot;
      i_airdropToken = airdropToken;
      
    }
  }
