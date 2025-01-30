// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract UniversityToken is ERC20 {
    struct TransactionInfo {
        address sender;
        address receiver;
        uint256 amount;
        uint256 timestamp;
    }

    TransactionInfo[] public transactions;

    constructor() ERC20("AstanaITToken", "ASIT") {
        _mint(msg.sender, 2000 * 10 ** decimals());
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        super.transfer(recipient, amount);
        transactions.push(TransactionInfo({
            sender: msg.sender,
            receiver: recipient,
            amount: amount,
            timestamp: block.timestamp
        }));
        return true;
    }

    function getLastTransactionSender() public view returns (address) {
        require(transactions.length > 0, "No transactions available.");
        return transactions[transactions.length - 1].sender;
    }

    function getLastTransactionReceiver() public view returns (address) {
        require(transactions.length > 0, "No transactions available.");
        return transactions[transactions.length - 1].receiver;
    }

    function getLastTransactionTimestamp() public view returns (uint256) {
        require(transactions.length > 0, "No transactions available.");
        return transactions[transactions.length - 1].timestamp;
    }
}
 
