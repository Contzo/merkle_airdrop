// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/// @title MerkleAirDrop
/// @author Contzo
contract MerkleAirDrop {
    // List of allowed addresses to claim tokens
    // Allow someone in the list to claim tokens
    address[] public claimableAddresses;
}
