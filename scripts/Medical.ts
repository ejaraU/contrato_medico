import { ethers } from "hardhat";

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  const MedicalRecord = await ethers.getContractFactory("MedicalRecord2");//""
  const medicalRecord = await MedicalRecord.deploy();

  console.log("Contract address:", medicalRecord.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
