// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; 
contract simpleStorage {

uint256 public MyfavoriteNumber; 

struct Person{
    uint256 favoriteNumber;
    string name; 
}

Person[] public listofPeople;

Person Pat myfriend= Person(4,"Lenny");
function store(uint256 _favoriteNumber) public{
    MyfavoriteNumber = _favoriteNumber;
}

function retrieve() public view returns (uint256){
    return MyfavoriteNumber;
}

function addPerson(string memory _name, uint256 _favoriteNumber) public {
    listofPeople.push(Person(_favoriteNumber, name));
}
}
