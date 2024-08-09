// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    string private text;
    address public owner;
    address public backupOwner;

    constructor() {
        text = "Hello World";
        owner = msg.sender;
        backupOwner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    modifier onlyBackupOwner() {
        require(msg.sender == backupOwner, "Recovery is not allowed yet or wrong caller");
        _;
    }

    function helloWorld() public view returns (string memory) {
        return text;
    }

    function setText(string calldata newText) public onlyOwner {
        text = newText;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(this), "Ownership cannot be transferred to the contract's own address");
        
        owner = newOwner;
    }

    function recoverOwnership() public onlyBackupOwner {
        owner = backupOwner;
    }
}