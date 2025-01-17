// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract UniversityToken is ERC20 {
    constructor() ERC20("AstanaIT", "ASIT") {
        _mint(msg.sender, 2000 * 10 ** decimals());
    }

    struct TransactionInfo {
        address sender;
        address receiver;
        uint256 amount;
        uint256 timestamp;
    }

    TransactionInfo[] public transactions;

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

    function getLastTransactionTimestamp() public view returns (string memory) {
        if (transactions.length == 0) return "No transactions yet.";
        uint256 lastTimestamp = transactions[transactions.length - 1].timestamp;
        return string(abi.encodePacked(lastTimestamp));
    }

    function getLastTransactionSender() public view returns (address) {
        require(transactions.length > 0, "No transactions yet.");
        return transactions[transactions.length - 1].sender;
    }

    function getLastTransactionReceiver() public view returns (address) {
        require(transactions.length > 0, "No transactions yet.");
        return transactions[transactions.length - 1].receiver;
    }
}
