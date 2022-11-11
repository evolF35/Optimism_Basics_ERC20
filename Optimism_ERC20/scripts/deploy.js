const hre = require("hardhat");


async function main() {

  //const Lock = await hre.ethers.getContractFactory("kilomanjaro");
  //const lock = await Lock.deploy(444343);

  const Lock = await hre.ethers.getContractFactory("useChainLink");
  const lock = await Lock.deploy();

  await lock.deployed();

  console.log(`I think I broke something1,`,lock.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
