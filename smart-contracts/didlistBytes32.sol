// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DIDList{

    mapping (bytes32 => bool) public didlist;

    function isDIDIncluded(bytes32 did) external view returns(bool){
        return(didlist[did]);
    }

    function includeDID(bytes32 did) external {
        didlist[did] = true;
    }

    
    function removeDID(bytes32 did) external {
        didlist[did] = false;
    }

}