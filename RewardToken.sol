// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RewardToken is ERC20, ERC20Burnable, Ownable{
    
    mapping(address=> bool) controllers;
    
    constructor() ERC20("RewardToken","RWT"){ }

        function mint(address to, uint256 amount) external {
        require(controllers[msg.sender], "Only controllers can mint");
        _mint(to, amount);
        }

    function burnFrom(address account, uint amount) public override {
        if(controllers[msg.sender]){
            _burn(account, amount);
        }
        else{
            super.burnFrom(account, amount);
        }
    }

    function addControllers(address controller) external onlyOwner {
        controllers[controller] = true;
    }

    function removeControllers(address controller) external onlyOwner {
        controllers[controller] = true;
    }
}