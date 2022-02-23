pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    //Adopting pet
    function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15); //ensures petId does not go past the array

    adopters[petId] = msg.sender; // if id is in array we assign the person who called it msg.sender

    return petId;
    }
    
    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}