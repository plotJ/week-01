# Contract Interaction

## Scenario

1. Create [HelloWorld contract](../contracts/01_HelloWorld.sol) in [remix](https://remix.ethereum.org/).

2. Compile and deploy the contract. The contract address is `0xf5Cc318fa66a5fC6e308b4ec97138b06E28f4456` with the [transaction hash 0x202f83baf240ac3d0b7745e8ff4440c64e2703162591168b9bb97bf617ec3011](https://sepolia.etherscan.io/tx/0x202f83baf240ac3d0b7745e8ff4440c64e2703162591168b9bb97bf617ec3011)

3. Call the initial text after deploy and the result is `Hello World`.
   ![call the initial text after deploy](<Screenshot 2024-08-09 at 13.11.51.png>)

4. Change the text with `Tian was here!` via `setText function` with the [transaction hash 0x50c93e6d567009453f8e66a48fec6350bc9dc74d05e4766ab32819cde2ba525b](https://sepolia.etherscan.io/tx/0x50c93e6d567009453f8e66a48fec6350bc9dc74d05e4766ab32819cde2ba525b)
   ![change the text](<Screenshot 2024-08-09 at 13.17.00.png>)

5. Call again the text after changed and the result is `Tian was here!`.
   ![call the text after changed](<Screenshot 2024-08-09 at 13.18.08.png>)

6. Call the owner after deploy.
   ![call the owner after deploy](<Screenshot 2024-08-09 at 13.13.34.png>)

7. Transfer the ownership into Vins wallet `0x5256e878D3838c5993fF43697a282d8Aa929DBDC` with the [transaction hash 0xf7d6fdd9d5500772561a12903b0fbe07c91a8707a6315314dfcca930eae34a4e](https://sepolia.etherscan.io/tx/0xf7d6fdd9d5500772561a12903b0fbe07c91a8707a6315314dfcca930eae34a4e)
   ![transfer the ownership](<Screenshot 2024-08-09 at 16.58.11.png>)

8. Call the owner after transferred and the result is changed.
   ![call the owner after transferred](<Screenshot 2024-08-09 at 16.59.46.png>)
