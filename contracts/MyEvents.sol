// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

    contract MyEvents{
    
    event CreatedNFT(address indexed user, uint256 id, uint256 dna);

    function createNft(uint256 _id, uint256 _dna) public {
        // Create the nft and save to the storage
        emit CreatedNFT(msg.sender, _id, _dna);
    }
}