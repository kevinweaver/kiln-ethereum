pragma solidity ^0.5.2;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract TreasureToken is ERC20, ERC20Detailed {
  string public constant NAME = 'TreasureToken';
  string public constant SYMBOL = 'TRSR';
  uint8 public constant DECIMALS = 18;
  uint constant INITIAL_SUPPLY = 100000 * (10 ** uint256(DECIMALS));

  constructor () public ERC20Detailed(NAME, SYMBOL, DECIMALS){
    _mint(msg.sender, INITIAL_SUPPLY);
  }
}
