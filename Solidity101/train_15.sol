//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

// 自定義 Error，可以帶參數
error notOwner(address wrongAddress);


contract justTransfer{
    
    address public owner;
    mapping(address => uint256) public money;

    constructor(){
        owner = msg.sender;
        money[owner] = 500;
    }
    
    function transferToMe(address to,uint256 amount) external {
        // if (owner != msg.sender){
        //     revert notOwner(msg.sender);
        // }
        require(owner == msg.sender);
        money[owner] = money[owner] - amount;
        money[to] = money[to] + amount;
    }
}