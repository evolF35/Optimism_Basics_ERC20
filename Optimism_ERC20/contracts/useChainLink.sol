// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract useChainLink {
    AggregatorV3Interface public priceFeed;

    constructor() {
        priceFeed = AggregatorV3Interface(0x57241A37733983F97C4Ab06448F244A1E0Ca0ba8);
    }

    function getLatestPrice() public view returns (int){
        (,int price,,,) = priceFeed.latestRoundData();
        return(price);
    }

    function getDecimals() public view returns(uint8){
        uint8 decimals = priceFeed.decimals();
        return(decimals);
    }

}