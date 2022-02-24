// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyModifier{

    uint256 public myNum = 0;
    bool public paused = false;
    address public owner; 

    constructor (){
        owner = address(msg.sender);
    }

    modifier isNotPaused(){
        require(paused == false, "Contract is paused");
    _;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not the Owner");
    _;
    }

    function setPaused() public {
        paused = true;
    }

    function addToNum() public isNotPaused onlyOwner {
        require(paused == false, "Contract is paused");
        myNum++;
    }

    function subToNum() public isNotPaused onlyOwner {
        require(paused == false, "Contract is paused");
        myNum--;
    }
}