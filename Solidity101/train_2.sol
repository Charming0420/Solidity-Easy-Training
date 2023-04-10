// SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract train_2{
    int public _int = 1;
    uint public _int2 = 3**2;
    uint public _int3 = 7 % 2;

    address public _address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address payable public _address1 = payable(_address);
    uint public balance1 = _address1.balance;
    uint public balance = _address.balance;

    bytes32 public _byte32 = "ILOVEYOU";
    bytes1 public _byte1 = _byte32[0];

    enum CarSet { Volvo, Benz, Toyota}
    CarSet public carset = CarSet.Benz;

    // 可以把 enum 全部轉成數值 很少用的預設 Function
    function enumToUint() external view returns(uint){
        return uint(carset); 
    }

    
}