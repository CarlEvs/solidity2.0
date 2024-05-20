# SOLIDITY PROJECT
## OVERVIEW
This project is a simple "METATOKEN" program that demosntrate a smart contract for creating and managing a basic token named MyToken(MTK). It includes functionalities for minting new tokens and burning existing tokens.

### CONTRACT DETAILS:
```solidity
contract MyToken {
    // Contract variables and functions will go here
}
```
This defines the start and end of the "MyToken" contract. The name "MyToken" is the identifier for this contract.

#### PUBLIC VARIABLES:
```solidity
string public tokenName = "METATOKEN";
string public tokenAbbrv = "MTK";
uint public totalSupply = 0;
```
These public variables define properties of token, wherein`tokenName` represents the name of the token which is typically a human-readable name assigned to identify the token, and `tokenAbbrv` represents the abbreviation or ticker symbol of the token. While the `Total Supply` represents the total supply of the token, indicating how many tokens exist in circulation.

### MAPPING VARIABLE:
```
mapping(address => uint) public balances;
```
Mapping defines the balances that associates Ethereum addresses with their respective token balances.

### MINT FUNCTION:
```solidity
function mint (address _recipient, uint _amount) public {
        totalSupply += _amount;  
        balances[_recipient] += _amount; 
     }
```
The mint function in a token contract is typically used to create (or "mint") new tokens and assign them to a specified recipient.

### BURN FUNCTION:
```solidity
function burn (address _recipient, uint _amount) public {
        if (balances[_recipient] >= _amount)
        totalSupply -= _amount; 
        balances[_recipient] -= _amount;  
    }
}
```
This burn function used to remove (or "burn") esisting tokens from circulation, effectively reducing the total token supply.

### LICENSE:
This Project is licensed under MIT license - see the LICENSE file for details.
