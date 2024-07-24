// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract MyToken is ERC20Burnable {
    constructor() ERC20("PizzaToken", "PZT") {
        _mint(msg.sender, 1000 * 10 ** decimals()); // Minting initial supply to the deployer
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        return super.transfer(recipient, amount);
    }

    function burn(uint256 amount) public override {
        super.burn(amount);
    }
}

