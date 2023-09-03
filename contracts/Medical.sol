// MedicalRecord2.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MedicalRecord2 {
    struct Record {
        string patientName;
        string doctorName;
        string date;
        string diagnosis;
        string problem;
        string treatment;
    }

    mapping(address => Record[]) private medicalRecords;

    function addRecord(
        string memory _patientName,
        string memory _doctorName,
        string memory _date,
        string memory _diagnosis,
        string memory _problem,
        string memory _treatment
    ) external {
        medicalRecords[msg.sender].push(
            Record({
                patientName: _patientName,
                doctorName: _doctorName,
                date: _date,
                diagnosis: _diagnosis,
                problem: _problem,
                treatment: _treatment
            })
        );
    }

    function getRecords() external view returns (Record[] memory) {
        return medicalRecords[msg.sender];
    }
}
