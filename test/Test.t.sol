// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";

// import "solmate/test/utils/mocks/MockERC721.sol";
// import "solmate/test/utils/mocks/MockERC20.sol";

// import "futils/futils.sol";

function deployCode(bytes memory code) returns (address addr) {
    assembly {
        addr := create(add(0x20, code), mload(code), 0)
    }
}

contract Wrapper {
    constructor(bytes memory code) {
        assembly {
            return(add(0x20, code), mload(code))
        }
    }
}

contract TestContract is Test {
    using futils for *;

    function setUp() public {}

    /* ------------- test() ------------- */

    function test_test() public {}
}
