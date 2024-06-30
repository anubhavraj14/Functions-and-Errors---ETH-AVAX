
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract RequireAssertRevertExample {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
        value = 0;
    }

    // Function using require()
    function setValue(uint256 _value) public {
        require(_value <= 1000, "Value must be less than or equal to 1000");
        value = _value;
    }

    // Function using assert()
    function checkOwner() public view {
        assert(msg.sender == owner);
    }

    // Function using revert()
    function resetValue() public {
        if (msg.sender != owner) {
            revert("Only the owner can reset the value");
        }
        value = 0;
    }
}
