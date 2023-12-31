// contracts/access-control/Auth.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Auth {
    address private _administrator;
    constructor(address deploer){
        // make the deployer of the contract the administrator
        _administrator = deploer;
    }
    function isAdministraor(address user) public view returns (bool) {
        return user == _administrator;
    }
}