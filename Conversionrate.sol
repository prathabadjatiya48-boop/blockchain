//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol"; 
library PriceConvertor{
    function getversion() public view returns(uint){
        AggregatorV3Interface value = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return value.version();
    }

    function getvalue() public view returns(uint){
        AggregatorV3Interface priceval = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int price,,,) = priceval.latestRoundData();
        return uint(price*1e10);
    }

    function Conversion(uint ethval) public view returns(uint){
        uint convertval = (getvalue()*ethval)/1e18;
        return convertval;

    }
}
