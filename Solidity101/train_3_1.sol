// SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract training_function{
    uint256 public number;

    // function 1 : common add
    function add() external {
        number = number + 1 ; 
    }

    //function 2 : pure add (無法讀取、無法改寫)
    function pureAdd(uint256 number1) external pure returns (uint256 new_number){
        return new_number = number1 + 1 ; 
    }


    //function 3 : view add (可以讀取、無法改寫)
    function viewAdd() external view returns (uint256 new_number2){
        // 下面這句會判錯因為 View 可以讀取狀態但不能改變狀態
        // return number = number + 1 ;
        return new_number2 = number + 1 ;
    }

}
