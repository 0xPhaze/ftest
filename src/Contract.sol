// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Unlinked.sol";

contract Contract {
    constructor() {}

    function func(uint256 a) public returns (uint256) {
        return unlinked(a);
    }
}
