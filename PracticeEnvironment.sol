SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
contract order{
  uint256 Pizzas = 4;
  function store(uint256 _Pizzas) public {
Pizzas = _pizzas;
  }
function retrive() public view returns(uint256) {
  return pizzas;
}
}
