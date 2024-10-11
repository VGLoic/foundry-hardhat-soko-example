// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public instance;

    function setUp() public {
        instance = new Counter();
    }

    function test_Increment() public {
        instance.increment();
        assertEq(instance.counter(), 2);
    }
}
