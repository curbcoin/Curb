//zorynflight-lendr lease contract ($LENDR)
//dev by @jackson
pragma solidity ^0.5.11;
contract baseAgreement
{ 
    address payable public owner;                //owner address
    address public tenant;                       // tenant address
    uint public rentcost;                        // Rental cost
    string public rentloc;                      // rental location
    uint public createdTimestamp;                // Agreement created Time 
    uint public Tpaid;                          // Amount paid by tenant 
    string public termsAgreed ;                 // terms agreed on contract 
    
        constructor() public {
        owner = msg.sender;
        createdTimestamp = block.timestamp;
        rentloc = rentloc;        
        rentcost = rentcost;
        termsAgreed = termsAgreed;
        }
        
        
        function rules(string memory ta) public {                   // function for owner imput terms of agreement on contract 
            if(msg.sender == address (owner))
            termsAgreed = ta;
    }
    
        function rentlocation(string memory rloc) public {           // function for owner imput location 
            if(msg.sender == address(owner))
            rentloc = rloc;
        }
        
        function cost(uint rcost) public {                           // function for owner imput cost 
            if(msg.sender == address(owner)) 
            rentcost = rcost;
        }
        
        function lease(address _t) public payable                // tenant takes lease
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
} 
                                        // loop main LENDR agreement General Lease 
                                        // zorynflight-lendr v1.02 complete
                                        // base contract sol 

                                        // notes
                                                   // lower gas price needed
                                                  // complete web3.js framework for frontend
                                                 // basic security added
