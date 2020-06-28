pragma solidity ^0.5.0;

/*
   Function Modifiers are used to modify the behaviour of a function. For example to add a prerequisite to a function.
*/
// First we create a modifier with or without parameter.

      // contract Owner {
      //    modifier onlyOwner {
      //       require(msg.sender == owner);
      //       _;
      //    }
      //    modifier costs(uint price) {
      //       if (msg.value >= price) {
      //          _;
      //       }
      //    }
      // }
/**
The function body is inserted where the special symbol "_;" appears in the definition of a modifier. So if condition of modifier is satisfied while calling this function, the function is executed and otherwise, an exception is thrown.

See the example below − */

pragma solidity ^0.5.0; 

contract Owner {
   address owner;
   constructor () public {
      owner = msg.sender;

   }
   modifier consts(uint price){
      require(msg.sender == owner);
      _;
   }
   modifier costs(uint price){
      if(msg.value >=price){
         _;
      }
   }
}
contrac Register is Owner {
   mapping (address => bool) registerAddresses;
   uint price;
   constructor(uint initialPrice) public {
      price = initialPrice;
   }

   function register()public payable costs(price) {
      registeredAddresses[msg.sender] = true;
      
   }

   function changePrice(uint _price) public onlyOwner {
      price = _price;
   }
}