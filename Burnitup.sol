// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

import "https://github.com/iquecode/BEP20_Token/blob/main/lib/BEP20Token.sol";

contract CustomToken is  BEP20Token {

    constructor() {
    _name = "Teste 6";
    _symbol = "TT6";
    _decimals = 6;
    _totalSupply = 10000 * 10 ** 6;
    _balances[msg.sender] = _totalSupply;

    emit Transfer(address(0), msg.sender, _totalSupply);
  }

}
