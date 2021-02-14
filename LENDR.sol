//LENDR Leasing Smart Contract 
pragma solidity ^0.5.11;
contract Agreement
{
    address payable public owner; //owner address
    address public tenant; // tenant address
    uint public rentcost; // Rental cost
    string public houseloc; // rental location
    uint public createdTimestamp; // Agreement created Time 
    uint public Tpaid; // Amount paid by tenant 
    
        constructor() public {
        owner = msg.sender;
        createdTimestamp = block.timestamp;
        houseloc = houseloc;
        rentcost = rentcost;
        }
        
        function rentlocation(string memory hloc) public {
            if(msg.sender == address(owner))
            houseloc = hloc;
        }
        
        function cost(uint rcost) public {
            if(msg.sender == address(owner)) 
            rentcost = rcost;
        }
        
        function lease(address _t) public payable  // tenant takes lease
        {
            tenant = _t;
            Tpaid = msg.value; 
        }
        event mytenant(address tenant, uint Tpaid);
        
    function getTenant() public view returns (address)
    {
    return tenant;
    }
    
    function TerminateContract() public
    {
        require(owner==msg.sender);
        owner.transfer(address(this).balance);
    }
} // loop main LENDR agreement General Lease 


