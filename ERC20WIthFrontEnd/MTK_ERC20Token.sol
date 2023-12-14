// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract MyToken is ERC20, Ownable {
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        require(to != address(0), "ERC20: transfer to the zero address");
        return super.transfer(to, amount);
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public override returns (bool) {
        require(to != address(0), "ERC20: transfer to the zero address");
        return super.transferFrom(from, to, amount);
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        return super.approve(spender, amount);
    }

    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external onlyOwner {
        _burn(account, amount);
    }
}
