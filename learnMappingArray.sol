//SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

contract MultipleStatus {
    enum StudentStatus {NotRegistered, Active, OnLeave, Graduated}

    struct Student {
        uint256 id;
        string name;
        address wallet;
        StudentStatus status;
        uint8 credits;
        bool exists;
    }

    //Mapping untuk menyimpan data mahasiswa
    mapping (uint256 => Student ) public students;

    //Couter
    uint256 public studentCounter;

    //Menambah mahasiswa baru
    function addStudent (string memory _name) public returns (uint256) {
        studentCounter++;

        students[studentCounter] = Student({
            id: studentCounter,
            name: _name,
            wallet: msg.sender,
            status: StudentStatus.Active,
            credits: 0,
            exists: true
        });

        return studentCounter;
    }
 
    // Tambah credits
    function addCredits(uint256 _id, uint8 _amount) public {
        students[_id].credits += _amount;
    }

    // Dapatkan info mahasiswa
    function getStudent(uint256 _id) public view returns (Student memory) {
        return students[_id];
    }

    // Check apakah mahasiswa exist
    function studentExists(uint256 _id) public view returns (bool) {
        return students[_id].exists;
    }   
}

/*
contract LearnArray {
    // Array untuk menyimpan student ID
    uint256[] public allStudentIds;

    // Tambah mahasiswa
    function addStudent(uint256 _id) public {
        allStudentIds.push(_id);
    }

    // Dapatkan total mahasiswa
    function getTotalStudents() public view returns (uint256) {
        return allStudentIds.length;
    }

    // Dapatkan semua student ID
    function getAllStudents() public view returns (uint256[] memory) {
        return allStudentIds;
    }

    // Dapatkan student tertentu by index
    function getStudentByIndex(uint256 _index) public view returns (uint256) {
        return allStudentIds[_index];
    }
}
*/

/*
contract LearnMapping {
    //Mapping: studentId => name artinya ketika kita memasukkan kunci pencarian -
    //menggunakan angka maka akan mengembalikan string 
    mapping (uint256 => string) public studentName;

    //Mapping: studentId => credits
    mapping (uint256 => uint256) public studentCredits;

    function addStudent (uint _id, string memory _name) public {
        studentName[_id] = _name;
        studentCredits[_id] = 0;
    }

    function addCredits(uint256 _id, uint256 _amount) public {
        studentCredits[_id] += _amount;
    }
}
*/