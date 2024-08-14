pragma solidity ^0.8.0;

contract PatientData {
    struct Patient {
        string name;
        string lastName;
        string doctor;
        string nurse;
        string medicine;
        uint dose;
        string time;
        string day;
    }

    mapping(address => Patient) private patients;

    function addPatient(address _address, string memory _name, string memory _lastName, string memory _doctor, string memory _nurse, string memory _medicine, uint _dose, string memory _time, string memory _day) public {
        patients[_address] = Patient(_name, _lastName, _doctor, _nurse, _medicine, _dose, _time, _day);
    }

    function getPatient(address _address) public view returns (string memory, string memory, string memory, string memory, string memory, uint, string memory, string memory) {
        Patient memory p = patients[_address];
        return (p.name, p.lastName, p.doctor, p.nurse, p.medicine, p.dose, p.time, p.day);
    }
}
