//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract StudentData {

    string public studentName;
    uint256 public studentId;
    uint256 public credits;
    bool public isActive;
    address public wallet;
    uint256 public registeredTime;

    constructor () {
        studentName = "Budi Santoso";
        studentId = 2101001;
        isActive = true;
        credits = 0;
        wallet = msg.sender;
        registeredTime = block.timestamp;
    }

    function updateCredits () public {
        credits += 3;
    }

    function getAge () public view returns (uint256) {
        return block.timestamp - registeredTime;
    }
}

/*
contract LearnAddress {
    address public admin;
    address public student;

    constructor () {
        admin = msg.sender; //msg.sender = alamat wallet anda
    }

    function setStudent (address _student) public {
        student = _student;
    }

}
*/

/*
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
*/

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