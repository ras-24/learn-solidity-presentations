// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Example {
    uint8 a = 255; // 0 -> 255
    uint256 b = 22; // alias: uint

    int8 c = 127; // -128 -> 127
    int256 d = -55; // alias: int

    bool myCondition = true;
    bool myCondition2; // default value is false

    enum Choice {
        Up,
        Down,
        Left,
        Right
    }

    Choice choice = Choice.Up;

    constructor() {
        console.logUint(type(uint8).min);
        console.logUint(type(uint8).max);

        console.logInt(type(int8).min);
        console.logInt(type(int8).max);

        if (myCondition) {
            console.log("yay");
        }

        if (choice == Choice.Up) {
            console.log("up");
        }
        if (choice == Choice.Down) {
            console.log("down");
        }
        if (choice == Choice.Right) {
            console.log("right");
        }
        if (choice == Choice.Left) {
            console.log("left");
        }
    }
}