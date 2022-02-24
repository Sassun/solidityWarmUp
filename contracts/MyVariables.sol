// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyVars {
    uint256 public number = 20; // state variable
    bool private paused = true; // state variable
    uint256 internal time = block.timestamp; 

    function myFunc() public view {
    uint256 localNumber = 20; // local variable 
    bool localPaused = true;  // local variable
    address theSenderAddress = msg.sender;
    }
}

contract INeedVariables is MyVars {
    uint256 public theAwesomeVar = 100;
    bool public paused = false;
    uint256 public theTime = time; // Is accessing the "internal" state varible 
}
