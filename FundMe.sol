// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe{
    uint256 public minimumUSD = 50 * 1e18;
    function fund() public payable  {
        require(getConversionRate(msg.value) > minimumUSD, "Don't sent a value");
    }
    // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
    function getPrice() public view returns (uint256) {
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int answer,,,) = pricefeed.latestRoundData();
        return uint256(answer * 10000000000);
    }
    function getConversionRate(uint256 ethAmount) public view returns (uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1000000000000000000;
        return ethAmountInUsd;
    }
}