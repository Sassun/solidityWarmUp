// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

// Base contract 1

    contract MyConstructor{
        string public name;

        constructor(string memory _name){
        name = _name;
    }
}

// Base contract 2 

    // Pass the parameters here in the constructor,
    // similar to function modifiers.
    contract MySecondContract is MyConstructor{
        constructor(string memory _name) MyConstructor(_name){}
}

// Parent constructors are always called in the order of inheritance
// regardless of the order of parent contracts listed in the
// constructor of the child contract.
