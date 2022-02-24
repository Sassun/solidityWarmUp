// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyMappings {

        mapping(uint256 => address) nfts;
        uint256 counter = 0;

        function getOwnerOfNft(uint256 _id) public view returns(address) {
          return  nfts[_id];
        }

        function mintNft(address _address) public{
            nfts[counter] = _address;
            counter++;
        }
} 