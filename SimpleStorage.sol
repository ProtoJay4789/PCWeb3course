// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity version
contract simpleStorage {
// 0 Defualts to zero if no other value is assigned
uint256 MyfavoriteNumber; 
// uint256 [] ListofFavoriteNumbers;
struct Person{
    uint256 favoriteNumber;
    string name; 
}
// dynamic array
Person[] public listofPeople; 

Person Pat myfriend= Person(4,"Lenny");
function store(uint256 _favoriteNumber) public{
    MyfavoriteNumber = _favoriteNumber;
    retrieve();
}
//Solidity will mark functions that use view, pure
function retrieve() public view returns (uint256){
    /* View fuctons disbale updating state variables 
    Pure does the same as view fucntion plus disbale reading from state or storage */
    return MyfavoriteNumber;

}
/* call data,memory, storage
 Call data is a temporary variable that cannot be modified */

function addPerson(string memory calldata _name, uint256 _favoriteNumber) public {
    listofPeople.push ( Person (_favoriteNumber, _name) );
}
}
