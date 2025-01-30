const hre = require("hardhat");

async function main() {
  // Получаем фабрику контракта
  const UniversityToken = await hre.ethers.getContractFactory("UniversityToken");

  // Разворачиваем контракт
  const token = await UniversityToken.deploy();
  await token.waitForDeployment(); // Используем корректный метод ожидания

  console.log("Contract deployed to:", await token.getAddress());
}

// Запускаем main() и обрабатываем ошибки
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
