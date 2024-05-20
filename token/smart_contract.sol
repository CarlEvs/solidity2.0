contract MyToken {
    // Contract variables and functions will go here

string public tokenName = "METATOKEN";
string public tokenAbbrv = "MTK";
uint public totalSupply = 0;

mapping(address => uint) public balances;

function mint (address _recipient, uint _amount) public {
        totalSupply += _amount;  
        balances[_recipient] += _amount; 
     }

function burn (address _recipient, uint _amount) public {
        if (balances[_recipient] >= _amount)
        totalSupply -= _amount; 
        balances[_recipient] -= _amount;  
    }
}