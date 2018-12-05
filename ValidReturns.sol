pragma solidity ^0.4.25;

contract ValidReturns{
    
    function add(uint a, uint b) public pure returns (uint) {
        return (a+b);   
    }
    
    
    function add2(uint a, uint b) public pure returns (uint c) {
        c = a+b;   
    }
    
    /*
    function add3(uint a, uint b){
        return (a+b);
    }
    */
    
    function add4(uint a, uint b) public pure returns (uint){ 
        uint c = a + b; 
        return c; 
    }
    
    function callAdd4() public pure returns (uint){
        return add4(123,11);
    }

}