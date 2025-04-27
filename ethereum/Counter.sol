// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "@openzeppelin/contracts/utils/math/SafeMath.sol";    the contracts to import need to be installed
contract Counter {
    // using SafeMath for uint256;

    uint256 public count = 0;

    function increment() public {
        count += 1;
    }

    function decrement() public {
        require(count > 0, "Counter is already zero.");
        count -= 1;
    }
}
