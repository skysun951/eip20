pragma solidity ^0.4.24;

import "github.com/ConsenSys/Tokens/contracts/eip20/EIP20.sol";
import "github.com/ConsenSys/Tokens/contracts/eip20/EIP20Interface.sol";
import "github.com/ConsenSys/Tokens/contracts/eip20/EIP20Factory.sol";

contract KM {
    address public kmOwner;
    mapping (address => address) public companiesByOwner;
    address private factory;
    
    constructor() public {
        kmOwner = msg.sender;
        factory = new EIP20Factory();
    }
    
    function createToken(uint256 _initialAmount, string _name, uint8 _decimals, string _symbol) 
    public 
    returns(address){
       return EIP20Factory(factory).createEIP20( _initialAmount,  _name,  _decimals,  _symbol);
    }
    
}

contract BC {
    address public bcOwner;
    mapping (address => bool) public admins;
    
    
}