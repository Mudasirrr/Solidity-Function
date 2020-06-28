
/*
Solidity provides inbuilt cryptographic functions as well. Following are important methods −

keccak256(bytes memory) returns (bytes32) − computes the Keccak-256 hash of the input.

sha256(bytes memory) returns (bytes32) − computes the SHA-256 hash of the input.

ripemd160(bytes memory) returns (bytes20) − compute RIPEMD-160 hash of the input.

sha256(bytes memory) returns (bytes32) − computes the SHA-256 hash of the input.

ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) returns (address) − recover the address associated with the public key from elliptic curve signature or return zero on error. The function parameters correspond to ECDSA values of the signature: r - first 32 bytes of signature; s: second 32 bytes of signature; v: final 1 byte of signature. This method returns an address.

Following example shows the usage of cryptographic function in Solidity.*/

pragma solidity ^0.5.0;

contract Test {   
   function callKeccak256() public pure returns(bytes32 result){
      return keccak256("ABC");
   }  
}
// Output
// 0: bytes32: result 0xe1629b9dda060bb30c7908346f6af189c16773fa148d3366701fbaa35d54f3c8