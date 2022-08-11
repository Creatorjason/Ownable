//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable{
    address public owner;
    constructor (){
        owner = msg.sender;
    }
    error cusError(string error, address owner);
    modifier onlyOwner(){
        if (owner != msg.sender){
            revert cusError("Unauthorized access, only owner can call function", msg.sender);
        }
        _;
    }
    function setNewOwner(address _newOwner) external onlyOwner{
        require(_newOwner != address(0));
        owner = _newOwner;

    }
    function onlyOwnerCanCall() external onlyOwner{
       // string public d = "hi"
    }
    function anyoneCanCall() external{

    }
}
