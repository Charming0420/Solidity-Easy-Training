//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract train_constant_immutable{

    // Immutable 可以在宣告時就賦值或在 Constructor 內才賦值
    uint256 public immutable IMMUTABLE_NUM = 520;
    address public immutable IMMUTABLE_ADDRESS;
    uint256 public immutable IMMUTABLE_BLOCK;
    uint256 public immutable IMMUTABLE_TEST;

    // Constant 一定要在宣告的時候賦值初始化
    uint256 constant CONSTANT_AGE = 10;


    constructor(){
        IMMUTABLE_ADDRESS = address(this);
        IMMUTABLE_BLOCK = block.number;
        IMMUTABLE_TEST = test();
    }

    function test() public pure returns(uint256){
        uint256 what = 9;
        return what;
    }
    
    // 編譯不會過因為 IMMUTABLE 參數不得被改變
    function tryToChangeNum() public {
        IMMUTABLE_NUM = IMMUTABLE_NUM + 20;
    } 
}