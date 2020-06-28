
/*
Solidity provides inbuilt mathematical functions as well. Following are heavily used methods −

addmod(uint x, uint y, uint k) returns (uint) − computes (x + y) % k where the addition is performed with arbitrary precision and does not wrap around at 2256.

mulmod(uint x, uint y, uint k) returns (uint) − computes (x * y) % k where the addition is performed with arbitrary precision and does not wrap around at 2256.

Following example shows the usage of mathematical functions in Solidity.*/

pragma solidity ^0.5.0;

contract Test {   
   function callAddMod() public pure returns(uint){
      return addmod(4, 5, 3);
   }
   function callMulMod() public pure returns(uint){
      return mulmod(4, 5, 3);
   }
}
// Click callAddMod button first and then callMulMod button to see the result.

// Output
// 0: uint256: 0
// 0: uint256: 2