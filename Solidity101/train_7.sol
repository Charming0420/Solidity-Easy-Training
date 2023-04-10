//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract train_mapping{
    mapping(uint256 => string) public school;

    function setMapping() external {
        school[37] = "tommy";
    }

    function enterMapping(uint256 number,string memory name) external {
        school[number] = name;
    }
}