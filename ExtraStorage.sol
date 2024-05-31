// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
//inheritance example
import "./SimpleStorage.sol";
contract ExtraStorage is SimpleStorage {
    function store(uint256 _favioratenumber) public override   {
        favioratenumber = _favioratenumber + 5;
    }
}