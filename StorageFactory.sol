// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage {
    
    SimpleStorage[] public firstArr;
  
    function createSimpleStorageContract() public {
        SimpleStorage firstContract = new SimpleStorage();
        firstArr.push(firstContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage(address(firstArr[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return SimpleStorage(address(firstArr[_simpleStorageIndex])).retriev();
    }

}
