// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDB {
    struct Student {
        string name;
        uint256 rollNo;
        string class;
    }

    Student[] private students;

    // Function to add a new student
    function addStudent(
        string memory name,
        uint256 rollNo,
        string memory class
    ) public {
        students.push(Student(name, rollNo, class));
    }

    // Function to get a student by ID (array index)
    function getStudentById(uint256 id)
        public
        view
        returns (string memory, uint256, string memory)
    {
        require(id < students.length, "Student does not exist in database");
        return (
            students[id].name,
            students[id].rollNo,
            students[id].class
        );
    }

    // Function to get the total number of students
    function getTotalNumberOfStudents() public view returns (uint256) {
        return students.length;
    }
}
