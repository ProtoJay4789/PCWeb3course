//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // version of Solidity
contract Practice {
 // ...Booleans are false by defualt 
bool hasfavoriteNumber;
bool IlovePractice = true;
/* uint and int are whole numbers 
 256 by default unless assigned */
uint256 IlovePractice = 1;
//only int can be negative
   int256 FavoriteInt = -1;
 // address is 20 bytes long
  address myaddress = 0x0000000000000000000000000000000000000000;
  /* bytes are low-level raw data bytes. Can only be 
  dynamic when a number is not specified */
bytes littledebbie = "Chocolate";
// bytes32 is a (static) fixed sized byte array of 32 bytes
bytes32 mystring = "hello";
// strings are dynamic byte arrays
string mystring2 = "hello";
/* Public makes it visible and usable to others outside smartcontract. 
It is internal by default. Variables are just placeholders for values. 
variable is set to 0 by defualt unless assigned */
uint256 public favoriteNumber;

/* The function is storing the value of the favoriteNumber variable */
function store(uint256 _favoriteNumber) public {
  favoriteNumber = _favoriteNumber;
} 
// view, pure 
function retrieve() public view returns(uint256){
  return favoriteNumber;
}
/* Structs are custom types that can group variables
Similar to other arrays. 0,1,2,3,4 Indexed
[10,4,109] */
struct Person {
  uint256 favoriteNumber;
  string name;
}
// Custom Type: favorite numer is 3 and name is James.
Person Brandon myfriend= Person(3, "Brandon");
// Can also use Person brandon myfriend = Person{(favoriteNumber:3, String: James)};
// dynamic array - Can grow or strink
  person[] listOfpeople; // empty  list
// Static array -  Does not move
person [3] ListOfpeople;

  /* Evm can access and store information in six places; 
  stack, memory, storage, call data, code, logs 
  Use memory for temporary functions  or functions that need to modified later. 
  Use storage for state variables that need to stay and be accessed ie. account balances.
  Use calldata for arguments that should not be changed, but need to be accessed.
  */
}

