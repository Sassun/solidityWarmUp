// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyStructs{

        struct NFT {
            string name;
            uint256 dna;
        }

        NFT[] public nftList;

        function addNft(string memory _name, uint256 _dna) public {
        // NFT memory newNFT;  creates a new NFT Object (Struct) == newNFT
        //  newNFT.name = _name;
        //  newNFT.dna = _dna; 
        //  nftList.push(newNFT);

        NFT memory newNFT = NFT(_name, _dna);
        nftList.push(newNFT);
        }

        function updateNFTStorage(uint256 _index, string memory _name) public{
            NFT storage nftToBeUpdated = nftList[_index];
            nftToBeUpdated.name = _name;
        }

        function updateNFTMemory(uint256 _index, string memory _name) public{
            NFT memory nftToBeUpdated = nftList[_index];
            nftToBeUpdated.name = _name;
            nftList[_index] = nftToBeUpdated;
        }

        function getNftName(uint256 _index) public view returns(string memory) {
            return nftList[_index].name;
        }
}