// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Script.sol";

import "../src/Contract.sol";

/* 
# Anvil
forge script deploy --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 -vvvv --ffi --broadcast 

If running the script ^ with `--broadcast` after `forge clean` (without running it without `--broadcast` before)
forge gives the following error:
```
Contract `/Users/lain/git/eth/foundryT/src/Unlinked.sol:Unlinked` has unlinked bytecode. Please check all libraries settings.
```

If running in this order, it works:

forge script deploy --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 -vvvv
forge script deploy --rpc-url http://127.0.0.1:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 -vvvv --ffi --broadcast 
*/

contract deploy is Script {
    function run() external {
        vm.startBroadcast();

        new Contract();

        vm.stopBroadcast();
    }
}
