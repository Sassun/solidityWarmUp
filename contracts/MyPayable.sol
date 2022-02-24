// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

contract MyPayable{

    // Payable address can receive Ether
    address payable public myAddress;

    // Payable constructor can receive Ether
    constructor() payable{
        myAddress = payable(msg.sender);
    }

    // Function to deposit Ether into this contract.
    // Call this function along with some Ether.
    // The balance of this contract will be automatically updated.
    function deposit() public payable {}

    function getThisContractBalance() public view returns (uint256){
        uint256 amount = address(this).balance;
        return amount;
    }

    function transferEth(address payable _user) public payable{
        _user.transfer(msg.value);
    }

    function sendEth(address payable _user) public payable{
         bool didSend =  _user.send(msg.value);
         require(didSend, "This Failed to Send");
    }

    function callEth(address payable _user) public payable{
            (bool didSend,) = _user.call{value: msg.value}("");
            require(didSend);
    }

    //No Data passed
    receive() external payable{}

    fallback() external payable{}
}