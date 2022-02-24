// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyTypes{
    bool myBoolean; //false
    bool public myNewBoolean = true;

    uint256 public myUint = 2213123;
    uint16 public myUint16 = 2222;
    uint8  public myUint8 = 255; // 0 - 255

    int256 private myInt = 2213123;
    int16 internal myInt16 = 2222;
    int8  internal myInt8 = -110;

    int256 myNewVar = int256(myInt8);

    address  myAddy = address (0x943590A42C27D08e3744202c4Ae5eD55c2dE240D);
    address  myContract = address(this);

    uint256 balanceOfMyContract = myContract.balance;

}
