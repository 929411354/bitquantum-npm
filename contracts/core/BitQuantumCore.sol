// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./interfaces/IBitQuantumCore.sol";

abstract contract BitQuantumCore is IBitQuantumCore {
    string public override name;
    string public override symbol;
    uint8 public constant override decimals = 18;
    
    mapping(address => uint256) internal _balances;
    mapping(address => mapping(address => uint256)) internal _allowances;
    uint256 internal _totalSupply;
    
    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }
    
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }
    
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }
    
    // ... 其他核心函数实现 ...
}
