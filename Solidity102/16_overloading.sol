// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract overLoadingTest{

    function test(uint256 number) external pure returns(uint256){
        return number;
    }

    function test() external pure returns(uint256){
        return 2;
    }
}
