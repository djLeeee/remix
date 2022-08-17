// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract KYC {
    mapping(string=>mapping(uint=>address)) public _users;

    function successKYC(string memory userIdentifyId, address useraddress, uint index) public{
        _users[userIdentifyId][index]=useraddress;
    }

    function getUserAddress(string memory userIdentifyId) public view returns(address){
        return _users[userIdentifyId][0];
    }
}