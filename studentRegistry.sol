
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract StudentRegistry {

    // SEGMENT 1: ENUM
    enum StudentStatus {
        NotRegistered,
        Active,
        OnLeave,
        Graduated
    }

    // SEGMENT 2: STRUCT
    struct Student {
        uint256 id;
        string name;
        uint256 age;
        StudentStatus status;
    }

    // SEGMENT 3: MAPPING
    mapping(uint256 => Student) private students;

    // SEGMENT 4: REGISTER STUDENT
    function registerStudent(
        uint256 _id,
        string memory _name,
        uint256 _age
    ) public {
        require(_id != 0, "ID cannot be zero");
        require(bytes(_name).length > 0, "Name cannot be empty");
        require(_age > 0, "Age must be greater than zero");
        require(students[_id].id == 0, "Student already registered");

        students[_id] = Student({
            id: _id,
            name: _name,
            age: _age,
            status: StudentStatus.Active
        });
    }

    // SEGMENT 5: GET STUDENT
    function getStudent(
        uint256 _id
    ) public view returns (Student memory) {
        require(students[_id].id != 0, "Student not found");

        return students[_id];
    }

    // SEGMENT 6: CHANGE STUDENT STATUS
    function changeStudentStatus(
        uint256 _id,
        StudentStatus _newStatus
    ) public {
        require(students[_id].id != 0, "Student not found");
        require(
            _newStatus != StudentStatus.NotRegistered,
            "Invalid status"
        );

        students[_id].status = _newStatus;
    }
}
