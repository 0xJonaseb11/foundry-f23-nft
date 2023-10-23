// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { Test } from "forge-std/Test.sol";
import { DeployBasicNft } from "../script/DeployBasicNft.s.sol";
import { BasicNft } from "../src/BasicNft.sol";

contract BasicNft is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("user);
    string memory public constant PUG = "ipfs: // got to repo
    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Dogie";
        string memory actualName = basicNft.name();
        // assertEq(expectedName == actualName);

        assert(keccak256(abi.encodePacked(expectedName)) == keccak256(abi.encodePacked(actualName)));
    }

    function testCanMintAndHasBalance() public {
        vm.prank(USER);
        basicNft.mintNft();
        assert(basicNft.balanceOf(USER) == 1);
        assert(basicNft(abi.encodePacked(PUG) == assert(keccak256(abi.encodePacked(PUG)) == keccak256(abi.encodePacked(BasicNft.tokenURI(0))));
    }

}
