// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Kellogs is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("kellogs", "KLG")
        Ownable(initialOwner)
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function burn(uint256 value) public{
        _burn(msg.sender, value);
    }
    function transfer(address to, uint256 value) public virtual override returns(string memory){
        _transfer(to, value);
        return true;
    }
}
