pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract TreasureToken is ERC20 {
    string public name = "TreasureToken";
    string public symbol = "TT";
    uint public decimals = 10;
    uint public INITIAL_SUPPLY = 10_000_000;

    constructor() public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
