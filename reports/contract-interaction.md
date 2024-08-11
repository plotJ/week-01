# Contract Interaction

## Scenario

### Tianbuyung's interaction

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

---

### Vin's interaction

9. Call `setText` function to change the text into `Now Devin is the owner,`
transaction hash: [0x55ab6fec8f4486e6d38495a6ce59f2bd3948505ca29f88565828c44ff2933a38](https://sepolia.etherscan.io/tx/0x55ab6fec8f4486e6d38495a6ce59f2bd3948505ca29f88565828c44ff2933a38) ![](<Screenshot 2024-08-09 at 22.21.29.png>)

10. Initially I want to transfer the ownership to the next team member's address, but I mistakenly transfer the ownership address as the smart contract's own address. In result, the smart contract is cannot be interacted anymore. Transaction hash: [0xfae0c61732f7b1a8bd9998edd6461c3f019d6efa456da00d35198ddd49352baa](https://sepolia.etherscan.io/tx/0xfae0c61732f7b1a8bd9998edd6461c3f019d6efa456da00d35198ddd49352baa)

11. We discussed internally in discord on how to prevent this to happen again and we come up with 2 solution:

- enable validation to not transfer ownership to contract's own address
- add backup recovery address function

12. Create new modified contract HelloWorld.sol can be found here: [02_HelloWorld.sol](../contracts/01_HelloWorld.sol)

13. Call `setText` function to change the text into `Hello from Vins`. Transaction hash: [0x875573de7196dfc93eda7eebf8c4e835b81da072baa53c6a156beeb6d8191778](https://sepolia.etherscan.io/tx/0x875573de7196dfc93eda7eebf8c4e835b81da072baa53c6a156beeb6d8191778) ![](<Screenshot 2024-08-09 at 23.02.01.png>)

14. Call `transferOwnership` function to transfer ownership to **0xOwenn**'s wallet `0x5073c3929c9BdECd87Cc63068Fd3185F0b6f22A5`. Transaction hash: [0xd70ed8b34d48b119202527ebc38e6f8697886c0ea0b10d01069d6f5cbf200f70](https://sepolia.etherscan.io/tx/0xd70ed8b34d48b119202527ebc38e6f8697886c0ea0b10d01069d6f5cbf200f70) ![](<Screenshot 2024-08-09 at 23.06.36.png>)


### GavinOwen interaction

15. Call `helloWorld` function to check the previous text from **Vins** and call `owner` function to check the contract owner ![](<Screenshot 2024-08-10 at 18.36.32.png>)

16. Call `setText` function to change the text into `Hello from GavinOwen` ![](<Screenshot 2024-08-10 at 18.37.26.png>)
    Transaction hash: [0x5f2b6ba30027de11ca25fa5c33a9466d44cae5b24fe3817bbc8769381aa11bd0](https://sepolia.etherscan.io/tx/0x5f2b6ba30027de11ca25fa5c33a9466d44cae5b24fe3817bbc8769381aa11bd0) ![](<Screenshot 2024-08-10 at 19.09.29.png>)

17. Call `transferOwnership` function to transfer ownership to **ErZete**'s wallet `0x9B389E744A464A0C3705Ee47dF9E964B22c950d3`. Transaction hash: [0xdcc9ae7b82c623bfbef47632693a7e8287dc7bdc8f3602a422a1c27dfb7a4ada](https://sepolia.etherscan.io/tx/0xdcc9ae7b82c623bfbef47632693a7e8287dc7bdc8f3602a422a1c27dfb7a4ada) ![](<Screenshot 2024-08-10 at 20.45.53.png>)


### Joosh interaction

1. Create [HelloWorld contract](../contracts/01_HelloWorld.sol) in [remix](https://remix.ethereum.org/).

2. Compile and deploy the contract. The contract address is `[0x4c55528e23E21dc99c79Ee6b4A9b1286a569E8E1](https://sepolia.etherscan.io/address/0x4c55528e23e21dc99c79ee6b4a9b1286a569e8e1)` with the [transaction hash 0x3f3883502776e9aae20a766a6047df1ffaf4971dcfa31f78fa83258da82f830a](https://sepolia.etherscan.io/address/0x4c55528e23e21dc99c79ee6b4a9b1286a569e8e1))
3. Change the text with `aasdf!` via `setText function`
4. Transfer the ownership into Erzete wallet `0x9B389E744A464A0C3705Ee47dF9E964B22c950d3` with the [transaction hash 0x3f3883502776e9aae20a766a6047df1ffaf4971dcfa31f78fa83258da82f830a](https://sepolia.etherscan.io/tx/0x3f3883502776e9aae20a766a6047df1ffaf4971dcfa31f78fa83258da82f830a))
5. Receive ownership from Erzete:`0x9B389E744A464A0C3705Ee47dF9E964B22c950d3` with the [transaction hash 0x939386d66e85ef5e17bd2a9b25c870cd2154a2dc4ee213a44be4f087ea4a3698](https://sepolia.etherscan.io/address/0x9b389e744a464a0c3705ee47df9e964b22c950d3))

   
