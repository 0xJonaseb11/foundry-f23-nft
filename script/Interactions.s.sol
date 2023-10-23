// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { Script } from "forge-std/Script.sol";
import { DevOpsTools } from "lib/foundry-devops/src/DevOpsTools.sol";
import { BasicNft } from "../src/BasicNft.sol";


contract MintBasicNft is Script {
     string memory public constant PUG = "ipfs: // got to repo
    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recently_deployed("BasicNft", block.chainid);
        mintNftOnContract(mostRecentlyDeployed);

    }
   
    function  mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        BasicNft(contractAddress).mintNft(PUG);
        vm.stopBroadcast(); 
    }

}