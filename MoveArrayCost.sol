pragma solidity ^0.4.17;


contract MoveArrayCost {
    uint[] public numbers;
    
    function MoveArrayCost() public{
        createArray();
    }
    
    function createArray() public{
      // numbers.push(10);
        uint i = 0;

        while (i < 500) {
          // numbers[i++]  = i;
          numbers.push(i++);
        }
        
        //moveValues(numbers);
    }
    
    
    function moveValues(uint[] anArray) public {
        uint[] memory anotherArray = anArray;
         anotherArray;
    }
}