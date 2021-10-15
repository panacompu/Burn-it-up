// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

import "http://github.com/panacompu/Burn-it-up/blob/main/BEP20Token.sol";

contract CustomToken is  BEP20Token {

    constructor() {
    _name = "Burn it up";
    _symbol = "BIP";
    _decimals = 18;
    _totalSupply = 10000 * 10 ** 18;
    _balances[msg.sender] = _totalSupply;

    emit Transfer(address(0), msg.sender, _totalSupply);
  }

}
