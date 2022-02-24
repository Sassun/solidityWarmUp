// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.11;

 // 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B
 
    contract MyOtherContract{
    uint256 public age = 29;

    function getAge() public view returns(uint256){
        return age;
    }
}

    contract MyContractCalls{

    function getAgeFromOtherContract(address _contractsAddess) public view returns(uint256){
        MyOtherContract otherCon = MyOtherContract(_contractsAddess);
        uint256 age = otherCon.getAge();
        return age; 
    }

}