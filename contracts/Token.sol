// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./IToken.sol";

 /// @title Create RoToken
 /// @author RC

contract Token is ERC20, IToken {
    address private _owner;

    constructor(address owner_) ERC20("RoToken", "ROT") {
        _owner = owner_;
        _mint(owner_, 1000000 * 10**decimals());
    }

    function owner() public view override returns (address) {
        return _owner;
    }
}
