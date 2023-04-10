//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract train_struct{

    struct Student{
        uint256 id;
        bytes32 name;
    }

    Student public student;

    function initStudent() external {
        Student storage functionalStudent = student;
        functionalStudent.id = 37;
        functionalStudent.name = "tommy";
    }

    // function initStudent2() public view {
    //     Student memory functionalStudent = student;
    //     functionalStudent.id = 37;
    //     functionalStudent.name = "tommy";
    // }

    function initStudent3() external {
        student.id = 50;
        student.name = "charming";
    }
}