//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

//部署之後要導入import 該 library
import "./StringLibrary.sol";

// 要使用 Library 就必須要先部署 Library 合約
contract testLibrary {

    // 注意，using for 要用 Library 的 Function name
    using Strings for uint256;

    //通過 using for 讓 Uint256 具備這個函數
    function getString1(uint number) public pure returns(string memory){
        return number.toHexString();
    }

    //直接通過 Library 合約名去調用
    function getString2(uint number) public pure returns(string memory){
        return Strings.toHexString(number);
    }
}