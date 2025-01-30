const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("UniversityToken", function () {
  let token, owner, addr1, addr2;

  beforeEach(async function () {
    [owner, addr1, addr2] = await ethers.getSigners();
    const UniversityToken = await ethers.getContractFactory("UniversityToken");
    token = await UniversityToken.deploy();
    await token.waitForDeployment(); // Используем правильный метод ожидания
  });

  it("Should deploy with initial supply", async function () {
    const ownerBalance = await token.balanceOf(owner.address);
    expect(ownerBalance).to.equal(ethers.parseEther("2000")); // ✅ Исправлен parseEther
  });

  it("Should transfer tokens and log transaction", async function () {
    await token.transfer(addr1.address, ethers.parseEther("10")); // ✅ Исправлен parseEther
    expect(await token.balanceOf(addr1.address)).to.equal(ethers.parseEther("10"));

    expect(await token.getLastTransactionSender()).to.equal(owner.address);
    expect(await token.getLastTransactionReceiver()).to.equal(addr1.address);

    // Проверяем, что timestamp был записан (не равен 0)
    const lastTransactionTimestamp = await token.getLastTransactionTimestamp();
    expect(lastTransactionTimestamp).to.be.greaterThan(0);
  });
});
