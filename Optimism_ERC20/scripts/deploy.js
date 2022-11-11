const hre = require("hardhat");


async function main() {

  const Lock = await hre.ethers.getContractFactory("kilomanjaro");
  const lock = await Lock.deploy(444343);

  await lock.deployed();

  console.log(`I think I broke something`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
