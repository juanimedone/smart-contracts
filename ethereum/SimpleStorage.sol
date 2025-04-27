// License info for humans and tools. SPDX stands for Software Package Data Exchange
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // Compiler directive. Tells the compiler which version of the language your contract is written for.

// Other contracts may be imported here
// import "./OtherContract.sol";

contract SimpleStorage {
    uint256 private storedData; // The EVM is optimized for 256-bit operations. Every "slot" in Ethereum storage is 32 bytes = 256 bits.

    constructor () {
        storedData = 1; // Automatically defaults to 0 if absent
    }

    function set(uint256 x) public {    // public: other contracts and users (external calls) can call this function.
        storedData = x;
    }

    function get() public view returns (uint256) {  // view: Indicates that a function does not modify the state of the blockchain. No gas costs for external calls.
        return storedData;
    }
}
