//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract LearnBoolean {
    bool public isActive;
    bool public hasGraduated;

    constructor () {
        isActive = true;
        hasGraduated = false;
    }

    //fungsi untuk mengubah status
    function changeStatus (bool _status) public  {
        isActive = _status;
    }

    function graduate() public {
        hasGraduated = true;
    }
}

/*
contract LearnNumber {
    uint256 public studentId;
    uint256 public credits;

    constructor () {
        studentId = 2101001;
        credits = 0;
    }

    function changeStudentId(uint256 _newId) public {
        studentId = _newId;
    }

    function addCredits () public {
        credits = credits + 3;
    }
}
*/


/*
contract LearnString {
    string public studentName;


    constructor () {
        studentName = "Budi Santoso";
    }

    //fungsi mengubah nama
    function changeName (string memory _newName) public {
        studentName = _newName;
    }
}
*/
