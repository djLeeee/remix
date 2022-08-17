// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155Receiver.sol";
contract RealEstate is ERC1155, IERC1155Receiver {

    constructor() ERC1155("https://real_estate/apt/building/{id}.json") {
        _mint(msg.sender, 1, 10**18, "");
        _mint(msg.sender, 2, 10**27, "");
    }
    event logTest2(bytes a);
    function onERC1155Received(address, address, uint256, uint256, bytes memory a) public override virtual returns (bytes4) {
        emit logTest2(a);
        bytes4 test =  bytes4(a);
        return test;
    }

    function onERC1155BatchReceived(address, address, uint256[] memory, uint256[] memory, bytes memory) public override virtual returns (bytes4) {
        return 0xf23a6e62;
    }

    function onERC721Received(address, address, uint256, bytes memory) public virtual returns (bytes4) {
        return this.onERC721Received.selector;
    }
}