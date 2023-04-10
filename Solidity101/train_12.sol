//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract train_event{

    mapping(address => uint256) public balances ;

    event Transfer (address indexed from, address indexed to, uint256 value);

    function transfer(address from, address to, uint256 amount) external{
        balances[from] = 1000000;
        balances[from] -= amount;
        balances[to] += amount;

        emit Transfer(from,to,amount);
    }
}