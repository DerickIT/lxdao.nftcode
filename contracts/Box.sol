// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import auth form the access-control subdirectory
import "./access-control/Auth.sol";
contract Box {
    uint256 private _value;
    Auth private _auth;
    // emitted when the stored value changes
    event ValueChanged(uint256 value);

    // stores a new value in the contract
    function store(uint256 value) public {
        require(_auth.isAdministraor(msg.sender), "Unauthorized");
        _value = value;
        emit ValueChanged(_value);
    }

    // reads the last stored value
    function retrieve() public view returns (uint256) {
        return _value;
    }
}