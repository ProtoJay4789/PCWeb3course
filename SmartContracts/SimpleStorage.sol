// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // solidity version
contract simpleStorage {
// 0 Defualts to zero if no other value is assigned
uint256 public MyfavoriteNumber; 
// uint256 [] ListofFavoriteNumbers;
  // struct are new types in solidity 
struct Person{
    uint256 favoriteNumber;
    string name; 
}
// dynamic array
Person[] public listofPeople;

Person Pat myfriend= Person(4,"Lenny");
function store(uint256 _favoriteNumber) public{
    MyfavoriteNumber = _favoriteNumber;
}
// the function below will retrieve the favorite number

function retrieve() public view returns (uint256){
    /* View fuctons disbale updating state variables 
    Pure does the same as view fucntion plus disbale reading from state or storage */
    return MyfavoriteNumber;

}
/* call data,memory, storage
 Call data is a temporary variable that cannot bemodified */

function addPerson(string memory _name, uint256 _favoriteNumber) public {
    listofPeople.push(Person(_favoriteNumber, name));
}
}
