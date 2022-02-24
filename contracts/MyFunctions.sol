// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyFunctions {
    uint256 myUnit = 42;
    string myString = "Raby";
    bool myBool = true;
    uint256[] myArr = [3,3,3];

    function myPureFunc(uint256 _x, uint256 _y) public pure returns (uint256 result) {
        return _x * _y;
    }

    function myViewFunc() public view returns (string memory) {
        return myString;
    }

    function myUpdateFunc() public returns (string memory) {
         myString = "HashLips";
         string memory savedString = myViewFunc();
         return savedString;
    }

    function myExUpdateFunc() internal returns (string memory) {
         myString = "HashLips";
         string memory savedString = myViewFunc();
         return savedString;
    }

    function myReturnFunc() external view returns (uint256, string memory, bool, uint256[] memory) {
        return (myUnit, myString, myBool, myArr);
    }
     function myNoReturnFunc() external {
        myBool = false;
    }
}



