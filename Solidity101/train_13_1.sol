//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;


contract father{
    string public name = "david";
    uint256 public number = 10;

    function changeName() public{
        name = "david2";
    }


}

contract son is father{
    constructor (){
        name = "tommy";
    }
    
    function changeNameNew() external{
        changeName();
    }
}