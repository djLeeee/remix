// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./9_EIP4973.sol";

contract SbtTest is ERC4973{
    constructor() ERC4973("SBT","SBT"){
        _mint(msg.sender,0,"test.json");
    }
}