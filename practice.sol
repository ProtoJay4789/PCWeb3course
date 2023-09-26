SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 
contract Practice {
/* 
* Booleans are false by defualt 
* uint and int are 256 by default
* Your data is always visble on the blockchain, 
 aking something public allows other smart contracts 
 to call it
  * only int can be negative*/ 
uint MydogJimbo;
funtion Store(uint256 _MydogJimbo) public {
MydogJimbo = _MydogJimbo + 1;
}
// Arrays start from 0,1,2,3,4,etc
//uint256 [] ListOfNumbers;
struct person {
  uint256 Bigdogs;
  string name;
  }
  persom public mydog = person({Bigdogs: 1, name: "Jimbo"});

str
 function retreive() publiv view returns(uint256) {
  return MydogJimbo
}