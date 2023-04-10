// SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract train_return{

    uint256 public number = 500 ;
    uint256 public numberFinal;

    // 直接在 returns 後面宣告完參數名稱則 Function 內就不用再 Retrun 
        function returnNumber () public pure returns (uint256 number2){
        number2 = 200;
    }

    // 如果不先宣告清楚，則內部就需要講清楚 Return
    function returnNumber2 () public view returns (uint256){
        uint256 number3 ;
        return number3 = number + 200 ;
    }

    // 解構式賦值，也就是可以透過這種方式將 returnNumber() 的返回值賦予某個參數
    function destructuringReturn () public{
        (numberFinal) = returnNumber();
    }
}