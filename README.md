# 🎓 UniversityToken - ERC-20 Smart Contract

## 📌 Project Description
UniversityToken is an **ERC-20** smart contract with transaction logging.  
It was developed as part of an assignment to demonstrate how to create and deploy an Ethereum token using **Hardhat** and **OpenZeppelin**.

## 🔧 Features
- ✅ ERC-20 standard functions: `transfer`, `approve`, `allowance`, `balanceOf`
- ✅ **Transaction Logging** (records sender, receiver, amount, and timestamp)
- ✅ Additional functions:
  - `getLastTransactionSender()`
  - `getLastTransactionReceiver()`
  - `getLastTransactionTimestamp()`
- ✅ **Deployed on Sepolia Testnet**
- ✅ **Fully tested with Hardhat**

---


## 🚀 Deployment Instructions

### 1️⃣ **Install Dependencies**
```bash
npm install
```

### 2️⃣ **Configure Environment Variables**
Create a **`.env`** file in the project root and add:
```bash
INFURA_API_KEY=your_infura_api_key
PRIVATE_KEY=your_private_key_without_0x
```
**Replace `your_infura_api_key` with your Infura API key and `your_private_key_without_0x` with your MetaMask private key (without `0x`).**

### 3️⃣ **Compile the Contract**
```bash
npx hardhat compile
```
This will compile the Solidity contract and generate the required artifacts.

### 4️⃣ **Deploy to Sepolia Testnet**
Run the following command to deploy the contract:
```bash
npx hardhat run scripts/deploy.js --network sepolia
```
After a successful deployment, the contract address will be displayed in the console.

---

## 🛠 Testing

### Run Tests:
To ensure the contract works as expected, run:
```bash
npx hardhat test
```
You should see an output similar to this:
```
11 passing (778ms)
```
All tests should pass successfully.

---

## 📌 Contract Address on Sepolia
🔗 **Deployed Contract Address:**  
`0xDC3e5a7e66b7be7Ed454d57025692389843423fb`  

🔍 **View on Etherscan:**  
[Sepolia Etherscan](https://sepolia.etherscan.io/address/0xDC3e5a7e66b7be7Ed454d57025692389843423fb)

![image](https://github.com/user-attachments/assets/7ee31497-6f13-4dc8-a122-edf487f1b7c6)

---

## 💻 Project Structure
```
/UniversityToken
|—— contracts/                # Smart contract files
|   ├—— UniversityToken.sol    # ERC-20 token contract
|—— scripts/                  # Deployment scripts
|   ├—— deploy.js              # Script to deploy the contract
|—— test/                     # Tests for the contract
|   ├—— UniversityToken.test.js
|—— hardhat.config.js         # Hardhat configuration file
|—— .env                      # Environment variables (NOT in GitHub)
|—— README.md                 # Project documentation
|—— LICENSE                   # MIT License
```

---

## 📝 License
This project is licensed under the **MIT License**.  
Feel free to modify and use this contract for educational purposes.



