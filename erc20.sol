// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20Burnable, Ownable {
     constructor() ERC20("PizzaToken", "PZT") Ownable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4) {
        _mint(msg.sender, 1000 * 10 ** decimals()); // Minting initial supply to the deployer
    }


    // Only the owner of the contract can mint new tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        return super.transfer(recipient, amount);
    }

    function burn(uint256 amount) public override {
        super.burn(amount);
    }
}
