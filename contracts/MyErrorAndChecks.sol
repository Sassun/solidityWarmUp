// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyErrorAndChecks {
   
    function myPureFunc (uint256 _x, uint256 _y) public pure returns (uint256 xy){
        require(_x < _y, "X is bigger than Y");
        return _x + _y;
    }

    function myPureRevertFunc (uint256 _x, uint256 _y) public pure returns (uint256 xy){
        // logic
        if(_x == 10){
            revert("X is 10");
        }
        return _x + _y;
    }
}