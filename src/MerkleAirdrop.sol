// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title MerkleAirDrop
/// @author Contzo
contract MerkleAirDrop {
    using SafeERC20 for IERC20; // enable the use of all the safe ERC20 function on all regular IERC20 instances

    error MerkleAirdrop__InvalidProof();
    // List of allowed addresses to claim tokens
    // Allow someone in the list to claim tokens
    address[] public claimers;
    bytes32 private immutable I_MERKLEI_ROOT;
    IERC20 public immutable I_AIRDROP_TOKEN;

    event Claim(address account, uint256 amount);

    constructor(bytes32 merkleRoot, IERC20 airdropToken) {
        I_MERKLEI_ROOT = merkleRoot;
        I_AIRDROP_TOKEN = airdropToken;
    }

    function claim(address account, uint256 amount, bytes32[] memory merkleProof) external {
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(account, amount)))); // calculate the leaf node using the receiver address and the amount

        if (!MerkleProof.verify(merkleProof, leaf, I_MERKLEI_ROOT)) {
            revert MerkleAirdrop__InvalidProof();
        }

        emit Claim(account, amount);
        I_AIRDROP_TOKEN.safeTransfer(token, to, value);
        (account, amount);
    }
}

