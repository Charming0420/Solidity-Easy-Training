//SPDX-License-Identifier:MTI
pragma solidity ^0.8.17;

// 有四種 import 方式
// import './Yeye.sol';   必須導入當地 folder
// import '@openzeppelin/contracts/access/Ownable.sol';
// import {Yeye} from './Yeye.sol';   必須導入當地 folder
// import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol';

contract importSomething{
    using Address for address;
    address charming;

function testImport () external{
}
}