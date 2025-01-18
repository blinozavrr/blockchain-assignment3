# UniversityToken ERC-20 Smart Contract

## Description
UniversityToken is a custom ERC-20 token created as part of an educational project. The contract follows the ERC-20 standard and includes additional functionality to log and retrieve transaction details, such as the sender, receiver, amount, and timestamp of the most recent transaction.

## Features
- **ERC-20 Standard Implementation**: Fully compliant with the Ethereum ERC-20 token standard.
- **Initial Supply**: A total of 2000 tokens minted to the deployer's address.
- **Transaction Logging**: Tracks each transfer with sender, receiver, amount, and timestamp.
- **Custom Functions**:
  - `getLastTransactionSender()`: Returns the address of the sender of the last transaction.
  - `getLastTransactionReceiver()`: Returns the address of the receiver of the last transaction.
  - `getLastTransactionTimestamp()`: Returns the timestamp of the last transaction.

## Deployment
The contract has been deployed to the Sepolia test network.

### Deployed Contract Information
- **Contract Address**: `0xD6D58070cbB0e91FF8fBf2F37cEdDC9B8D945440`
- **Block Explorer**: [Sepolia Etherscan][ (https://sepolia.etherscan.io/address/0xD6D58070cbB0e91FF8fBf2F37cEdDC9B8D945440)

## How to Use

### Requirements
- **MetaMask**: Installed and connected to the Sepolia network.
- **Remix IDE**: For deploying and interacting with the contract.

### Steps to Deploy
1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file called `UniversityToken.sol`.
3. Copy the contract code into the file.
4. Compile the contract using the Solidity compiler version `0.8.x`.
5. Deploy the contract using the **Injected Provider (MetaMask)** with the Sepolia network.
6. Confirm the deployment transaction in MetaMask.

### Interacting with the Contract
- Use the `transfer` function to send tokens to another address.
- Call the custom functions to retrieve information about the latest transaction:
  - `getLastTransactionSender()`
  - `getLastTransactionReceiver()`
  - `getLastTransactionTimestamp()`

## Example Function Calls
1. Transfer 10 tokens:
   ```solidity
   transfer("0xRecipientAddress", 10)
