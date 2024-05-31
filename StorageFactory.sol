// SPDX-License-Identifier: MIT
// Import & export 
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public SimpleStorageArray;
    function createSimpleStorage() public {
        SimpleStorage simplestorage = new SimpleStorage();
        SimpleStorageArray.push(simplestorage);
    }
    function sfstore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
       // SimpleStorage(address(SimpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        SimpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
        return SimpleStorageArray[_simpleStorageIndex].retrive();
    }

}