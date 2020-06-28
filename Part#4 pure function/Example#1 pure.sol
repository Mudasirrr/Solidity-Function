
/*Pure functions ensure that they not read or modify the state. A function can be declared as pure. The following statements if present in the function are considered reading the state and compiler will throw warning in such cases.

Reading state variables.

Accessing address(this).balance or <address>.balance.

Accessing any of the special variable of block, tx, msg (msg.sig and msg.data can be read).

Calling any function not marked pure.

Using inline assembly that contains certain opcodes.

Pure functions can use the revert() and require() functions to revert potential state changes if an error occurs.

See the example below using a view function.*/

pragma solidity ^0.5.0;

contract Test {
   function getResult() public pure returns(uint product, uint sum){
      uint a = 1; 
      uint b = 2;
      product = a * b;
      sum = a + b; 
   }
}
// Run the above program using steps provided in Solidity First Application chapter.

// Output
// 0: uint256: product 2
// 1: uint256: sum 3