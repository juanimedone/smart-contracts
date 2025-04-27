// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownership {
    address public owner;

    // Ensures only the contract owner can call the function
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    // Sets the initial owner as the deployer of the contract
    constructor() {
        owner = msg.sender;
    }

    function restrictedFunction() public onlyOwner {
        // Only the owner can execute this code
    }

    function transferOwnership(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}
