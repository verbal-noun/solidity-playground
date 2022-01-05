pragma solidity ^0.8.0; 

// Contract is similar to a class in Java
contract SimpleStorage {
    
    // Similar to structs in C 
    struct People {
        uint256 favouriteNumber;
        string name;
    }

    // Array of persons 
    People[] public people;

    // function to add a person 
    function addPerson(uint256 favNum, string memory _name) public {
        people.push(People(favNum, _name));
    }
}