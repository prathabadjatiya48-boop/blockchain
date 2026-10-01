//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract mumbai{
    uint public favnum;
    function store (uint num1) public{
        favnum = num1;
        retrieve();
    }

    function retrieve() public view returns(uint){
        return favnum;
    }

    struct person{
        uint favnum;
        string name;
    }
    person[] public listofpersons;
    mapping(string=> uint) public nametofavnum;
    function personpush(uint favnums, string memory name1) public{
        listofpersons.push(person(favnums,name1));
        nametofavnum[name1] =  favnums;
    }
}
