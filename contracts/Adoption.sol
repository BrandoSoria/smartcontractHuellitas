// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Adoption {
    address[6] public adopters;

   
   // Adopting a pet
function adopt(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 5);

  adopters[petId] = msg.sender;

  return petId;
}
// Retrieving the adopters
function getAdopters() public view returns (address[6] memory) {
  return adopters;
}

}
