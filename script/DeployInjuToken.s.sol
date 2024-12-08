// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Script} from "forge-std/Script.sol";
import {InjuToken} from "../src/InjuToken.sol";

contract DeployInjuToken is Script{
    uint256 public constant INITIAL_SUPPLY = 1000 ether;

    function run() external{
        vm.startBroadcast();
        new InjuToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }

}