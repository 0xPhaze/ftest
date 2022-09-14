// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Script.sol";

// import "solmate/test/utils/mocks/MockERC721.sol";

// import "/Contract.sol";

/* 

# Mainnet
source .env && forge script deploy --rpc-url $RPC_MAINNET --private-key $PRIVATE_KEY_XXX -vvvv
source .env && forge script deploy --rpc-url $RPC_MAINNET --private-key $PRIVATE_KEY_XXX -vvvv --broadcast 

# Mumbai
source .env && forge script deploy --rpc-url $RPC_MUMBAI --private-key $PRIVATE_KEY --with-gas-price 38gwei -vvvv
source .env && forge script deploy --rpc-url $RPC_MUMBAI --private-key $PRIVATE_KEY --verify --etherscan-api-key $POLYGONSCAN_KEY --with-gas-price 38gwei -vvvv --ffi --broadcast 

# Anvil
source .env && forge script deploy --rpc-url $RPC_ANVIL --private-key $PRIVATE_KEY_ANVIL 38gwei -vvvv
source .env && forge script deploy --rpc-url $RPC_ANVIL --private-key $PRIVATE_KEY_ANVIL 38gwei -vvvv --ffi --broadcast 

source .env && forge script deploy --rpc-url $RPC_GOERLI --private-key $PRIVATE_KEY -vvvv

*/

// contract TestDeploy {
//     constructor() payable {
//         require(block.number % 10 < 9);

//         // block.coinbase.transfer(msg.value);
//     }
// }

contract deploy is Script {
    function run() external {
        vm.startBroadcast();

        // new TestDeploy();

        vm.stopBroadcast();
    }
}
