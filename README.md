# ERC20 Smart Contract

This Solidity program is a simple "MyToken" contract that demonstrates the functionality of minting, burning, and transferring ERC20 tokens. The purpose of this program is to provide a foundational understanding of how ERC20 tokens can be manipulated within the Ethereum blockchain ecosystem.

## Description

This program is a contract written in Solidity, utilizing the OpenZeppelin library for robust, secure development. The contract allows users to mint new tokens, burn existing tokens, and transfer tokens to other addresses. This example serves as a practical introduction to ERC20 token operations and can be used as a basis for more complex token-based projects.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. Here's how to get started:

1. Go to the Remix website at [https://remix.ethereum.org/](https://remix.ethereum.org/).

2. Once on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `MyToken.sol`).

3. Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract MyToken is ERC20Burnable {
    constructor() ERC20("MyToken", "MTK") {
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
