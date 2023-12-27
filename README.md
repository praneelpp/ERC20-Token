# Kellogs ERC20TOKEN

The solidity code demonstrates the creation of ERC20 token called 'Kellogs' and in the loom video, the demonstration of the implementation of mint,burn, transfer, approve, balance is shown.

## Description

In this third module of Avalanche Intermediate course, I have used openzeppelin library to create a token called 'kellogs' and token symbol 'KLG'. I have checked the 'mintable', 'burnable' and 'ownable' box so that openzeppelin provides us with those libraries too.I was also able to interact with other functions like transfer, approve and ownership functions. In this code , a modifer 'Ownable' is added too so that only the owner address can mint tokens.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Kellogs.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Kellogs is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("kellogs", "KLG")
        Ownable(initialOwner)
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.20" (or another compatible version), and then click on the "Compile Kellogs.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Kellogs" contract from the dropdown menu, and then click on the "Deploy" button.



## Authors

Praneel Patel GM

@praneelpatel88@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
