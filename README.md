# Functions-and-Errors---ETH-AVAX

This Solidity program demonstrates the usage of `require()`, `assert()`, and `revert()` functions in a smart contract. These functions are essential for enforcing conditions and handling errors in Solidity, making this contract a useful example for developers looking to understand these features.

## Description

The `RequireAssertRevertExample` contract is designed to showcase three different methods for condition checking and error handling in Solidity:

- **require()**: Used to validate input conditions.
- **assert()**: Used to check for invariants.
- **revert()**: Used to handle errors by reverting the transaction.

The contract includes functions to set and reset a value, and to check ownership of the contract.

## Getting Started

### Prerequisites

To work with this contract, you will need:

- A basic understanding of Solidity.
- Access to Remix, an online Solidity IDE.

### Executing Program

Follow these steps to compile, deploy, and interact with the contract using Remix.

1. **Open Remix**:
   Go to [Remix](https://remix.ethereum.org/).

2. **Create a New File**:
   In the left-hand sidebar, click on the "+" icon to create a new file. Save the file with a `.sol` extension (e.g., `RequireAssertRevertExample.sol`).

3. **Copy and Paste the Code**:
   ```solidity
   // SPDX-License-Identifier: MIT
   // compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
   pragma solidity ^0.8.17;

   contract RequireAssertRevertExample {
       address public owner;
       uint256 public value;

       constructor() {
           owner = msg.sender;
           value = 0;
       }

       // Function using require()
       function setValue(uint256 _value) public {
           require(_value <= 1000, "Value must be less than or equal to 1000");
           value = _value;
       }

       // Function using assert()
       function checkOwner() public view {
           assert(msg.sender == owner);
       }

       // Function using revert()
       function resetValue() public {
           if (msg.sender != owner) {
               revert("Only the owner can reset the value");
           }
           value = 0;
       }
   }
   ```

4. **Compile the Code**:
   - Click on the "Solidity Compiler" tab in the left-hand sidebar.
   - Ensure the "Compiler" option is set to a version between 0.8.17 and 0.9.0.
   - Click on the "Compile RequireAssertRevertExample.sol" button.

5. **Deploy the Contract**:
   - Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
   - Select the `RequireAssertRevertExample` contract from the dropdown menu.
   - Click on the "Deploy" button.

6. **Interact with the Contract**:
   - After deployment, the contract will appear in the left-hand sidebar.
   - You can interact with the contract functions (`setValue`, `checkOwner`, `resetValue`) by providing necessary inputs and executing the functions.

## Authors

- **Anubhav Raj**
- [@anubhavraj554](https://academy.metacrafters.io/profile)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
