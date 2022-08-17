// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Hello{
    string public pi = "HI";
    bool public b1 = false || true;

    bytes32 public bt1 = "test";
    bytes public bt3 = "test";
    bytes4 public bt2 = 0x12121212;

    function bytes32ToString(bytes memory _bytes) public pure returns (string memory) {
        uint8 i = 0;
        while(i < 8 && _bytes[i] != 0) {
            i++;
        }
        bytes memory bytesArray = new bytes(i);
        for (i = 0; i < 8 && _bytes[i] != 0; i++) {
            bytesArray[i] = _bytes[i];
        }
        return string(bytesArray);
    }

    function myfunction() public pure returns(string memory a){
        a = "11";
    } 
}

contract A{
    Hello hello = new Hello();

    function bytes32ToString(bytes memory _bytes) public view returns(string memory){
        return hello.bytes32ToString(_bytes);
    }
}