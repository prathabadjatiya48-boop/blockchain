//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {mumbai} from "./SimpleStorage.sol";
contract StorageFactory{
    mumbai[] public listofsimplestorage;
    function createsimplestorage() public{
        mumbai mysimStorage = new mumbai();
        listofsimplestorage.push(mysimStorage);
    }

    function sfstore(uint mumbaiidx, uint number) public{
        mumbai mysimStorage = listofsimplestorage[mumbaiidx];
        mysimStorage.store(number);
    }

    function sfview(uint mumbaiidx) public view returns(uint){
        mumbai mysimStorage = listofsimplestorage[mumbaiidx];
        return mysimStorage.retrieve();
    }
}
