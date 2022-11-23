// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;
contract Bank {
   address public owner;
   uint public balance;
   constructor() {
     owner = msg.sender;
   }
   function deposit() external payable {
     balance += msg.value;
   }
   function withdraw(uint _amount) external {     
     require(balance >= _amount, "Insufficient balance!");
     payable(owner).transfer(_amount);
     balance -= _amount;
   }
}