// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity version
contract simpleStorage {
// 0 Defualts to zero if no other value is assigned
uint256 public MyfavoriteNumber; 
// uint256 [] ListofFavoriteNumbers;
struct Person{
    uint256 favoriteNumber;
    string name; 
}
// dynamic array
//Static size (limit size)
Person[] public listofPeople;

// Person public Myfriend = Person({favoriteNumber: 7, name: "Pat"});

function store(uint256 _favoriteNumber) public{
    MyfavoriteNumber = _favoriteNumber;
    retrieve();
}
//Solidity will mark functions that you don't view, pure
function retrieve() public view returns (uint256){
    /* View fuctons disbale updating state variables 
    Pure does the same as view fucntion plus disbale reading from state or storage */
    return MyfavoriteNumber;

}
// Will push people to array
function addPerson(string memory _name, uint256 _favoriteNumber) public {
    listofPeople.push ( Person (_favoriteNumber, _name) );
}
}
