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

    // Mapping
    mapping(string => uint256) public nameToFavNum;

    // function to add a person 
    // Memory - data will only be stored during the funtion execution 
    // Storate - The data will persist even after the function is done 
    function addPerson(uint256 favNum, string memory _name) public {
        people.push(People(favNum, _name));
        nameToFavNum[_name] = favNum;
    }
}