//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from 'lib/foundry-devops/src/DevOpsTools.sol';
import {Cole} from '../src/Cole.sol';

contract MintNft is Script{
   string constant PUG = 'ipfs://QmP2oxvA7KpP6r6aZC5eSqAHrGbqBPgeLTsiXx2TUYnv5q';
    function run() external{
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("Cole",block.chainid);
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) public{
        vm.startBroadcast();
        Cole(contractAddress).mint(0x6600D830BaBB1e96A5902Edd2BD960F0c245DB7d,8,PUG);
        vm.stopBroadcast();
    }
 }