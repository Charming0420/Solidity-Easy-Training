//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract fatherModifier{

    address public owner ;
    uint256 public number = 5;

    constructor (){
        owner = msg.sender;
    }

    modifier onlyOwner() virtual {
        require(msg.sender==owner);
        _;
    }

    function justTest() public onlyOwner{
        number += 10 ;
    }
}

contract sonModifier is fatherModifier{
    
    address public owner1 = msg.sender;
    uint256 public number2 = 10;

    modifier onlyOwner () override {
        _;    
        require(msg.sender!=owner1);
    }

    function justTest2() external onlyOwner{
        number2 += 10 ;
    }
}