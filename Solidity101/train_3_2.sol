// SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract train_internal_exteranl{
    uint256 public number = 5 ;
    
    // External directly minus number  
    function minusExternal() external {
        number = number - 1 ;
    }


    // Internal directly minus number , but can't directly use this function
    function miunsInternal() internal {
        number = number - 1 ;        
    }

    // so we only can use this exteranl function to call the internal function
    function minusCallInternal() external {
        miunsInternal();
    }

    // use payable that we can transfer money to the contract
    function getMoney() external payable returns(uint256 balance){
        balance = address(this).balance;
    }
}