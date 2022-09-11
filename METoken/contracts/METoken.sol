pragma solidity ^0.8.16;

// import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract METoken is ERC20 {
    mapping(address => uint256) private balances;

    string private constant _name = 'Mastering Ethereum Token';
    string private constant _symbol = 'MET';
    uint8 private constant _decimals = 2;
    uint private constant _initial_supply = 2100000000;

    constructor() ERC20(_name, _symbol){
        balances[msg.sender] = _initial_supply;
        emit Transfer(address(0), msg.sender, _initial_supply);
    }
}