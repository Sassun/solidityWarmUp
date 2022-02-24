// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyIfElse{
    uint256 public revealState = 0;
    bool public isNowRevealed = false;
    string public status ="not yet revealed";

    function addToRecealState() public{
            revealState++;
    }

    function removeToRecealState() public{
            revealState--;
    }

    function isRevealed() public {
           if (revealState >= 5){
            isNowRevealed = true;
            status ="Is now Revealed";
           }
           else if (revealState < 5){
            isNowRevealed = false;
            status ="Is NOT Revealed";

           }
    }
}