//SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

interface IERCC721{
    function transfer(address,uint256) external;
    function watchBalance(address) external view returns(uint);
}

contract ERC721NFT is IERCC721{
    
    mapping(address => uint256) wallet; 
    
    function transfer(address to, uint256 amount) external override {
        wallet[to] += amount;
    }

    function watchBalance(address who) external view returns(uint256 total) {
        total = wallet[who];
        return total;
    }
}