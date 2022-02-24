// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyInheritance_A{
    string internal name = "PicNic";
}

// Contracts inherit other contracts by using the keyword 'is'.

contract MyInheritance_B is MyInheritance_A{
    
    function getName() public view virtual returns(string memory){
        return name;
    }
}

// Inheritance must be ordered from “most base-like” to “most derived”.
// Swapping the order of A and B will throw a compilation error.

contract MyInheritance_C is MyInheritance_B{
    
//virtual tag allows that the function gets overrridden
    function getName() public view virtual override returns(string memory){
        return name;
    }
}