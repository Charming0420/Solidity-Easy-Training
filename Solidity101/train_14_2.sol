//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

abstract contract test{
    uint256 public number = 50;
    // 抽象合約不能有建構子，如果有就會報錯
    // constructor(uint256 num){
    //     number = num;
    // }
    function addNumber() external virtual ; 
}


contract implement is test{
    function addNumber() external override{
        number = number + 20;
    }
}

