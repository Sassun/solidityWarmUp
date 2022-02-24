// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyOperators{
    
    uint8 a = 1;
    uint8 b = 2;
    uint8 c = 3;
    uint8 newValue;

/// @notice Artithmetic Operators (+, -, *, /, %, ++, --)
    function example_1() public{
        a * b + c;
        c % b;
        a++;
        b--;
    }

/// @notice Assignment Operators (=, +=, -=, *=, /=, %=)
    function example_2() public {
        newValue = a * b + c; 
        b = b * c;
        b *= c; // same as line 23.

    }    

/// @notice Comparision Operators (==, !=, <, <=, >, >=)
    function example_3() public view {

        bool result = false;

        if(a < b){
            result = true;
        }

        if(a <= b){
            result = true;
        }

        if(a == b){
            result = true;
        }

        if(a != b){
            result = true;
        }
    }   

/// @notice Logical Operators (!, &&, ||)
    function example_4() public view {
    bool result = false;

     if(a < b && b > c){
            result = true;
        }

    if(a < b || b > c){
            result = true;
        }
    }   

/// @notice Conditional Operators (?, A:B)
    function example_5() public view {
     uint8 result;
     result = a < b ? 100 : 50;  // If a smaller then b then set 100 else 50

    }   
}