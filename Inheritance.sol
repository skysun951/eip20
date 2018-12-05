pragma solidity ^0.4.25;

contract A{
    string public name = "hola";
    
    event Evento(uint valor);
    
    modifier esLegal(uint valo){
        require(valo >0);
        _;
    }
    
    function sum(uint valor) returns (uint){
        return 1+2;
    }
    
    function substract(uint something) returns (uint){
        return 10-something;
    }
}

contract B is A{
    
    function printName() public returns(string){
        return name; // Inherit state variable
    }
    
    function sum(uint valor) returns (uint){
        emit Evento(valor); // Inherint event
        return super.sum(valor);
        
    }
    
    function validate(uint valor) public 
        esLegal(valor) // Inherit modifier 
        returns (uint){
             return valor+9;
    }
    
    function subsValue(uint aValue) returns (uint) {
        return substract(aValue);
    }
}