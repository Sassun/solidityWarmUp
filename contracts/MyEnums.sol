// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyEnums { 

    enum Rarity {
        original,
        rare, 
        super_rare
    }    

    Rarity public myRarity;

    constructor(){
        myRarity = Rarity.rare;
    }

    function makeSuperRare() public {
        myRarity = Rarity.super_rare;
    }
}