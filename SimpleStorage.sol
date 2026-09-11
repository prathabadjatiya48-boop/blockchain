//SPDX-License-Identifier: MIT 
pragma solidity 0.8.18;
contract SimpleStorage{
    uint favnum;
    function store(uint num1) public{
        favnum = num1;
    }
}
