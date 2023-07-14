// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity version
contract simpleStorage {
// 0 Defualts to zero if no other value is assigned
uint256 public favoriteNumber; 

function store(uint256 _favoriteNumber) public{
    favoriteNumber = _favoriteNumber;
    retrieve();
}
//Solidity will mark functions that you don't view, pure
function retrieve() public view returns (uint256){
    /* View fuctons disbale updating state variables 
    Pure does the same as view fucntion plus disbale reading from state or storage */
    return favoriteNumber;
}
}