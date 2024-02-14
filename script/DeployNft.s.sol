//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from 'forge-std/Script.sol';
import {Cole} from '../src/Cole.sol';

contract DeployNft is Script{
    function run() external returns (Cole){
        vm.startBroadcast();
        Cole cole = new Cole(0x6600D830BaBB1e96A5902Edd2BD960F0c245DB7d);
        vm.stopBroadcast();
        return cole;
    }
}
