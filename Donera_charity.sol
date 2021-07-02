//DONERA - DAAN KA NAYA SAVERA

//user login
//show who donated or anonymous
//use events as well
//ipfs : dapp university
//org (not themselves)and donard both can vote
//add a feature to be anonymous or login in system to donate, then show his/her previous donations as well

pragma solidity ^0.8.0;

contract charity {
    uint orgId=1;
    struct Organisation {
        string name;
        string desc;
        string email;
        string password;
        //REMOVE ORG
        //we will issue this id => e.g.: org1, org2, etc.
        string id;
        address orgAddress;
        string registrationId;
        bool isApproved;
        //certi or other docs ipfs
    }
    
    struct Donor {
        string name;
        string desc;
        string email;
        string password;
        string id;
        address donorAddress;
    }
    
    struct Donation {
        address donorAddress;
        address orgAddress;
        uint amount;
        uint donationId;
        uint transactionId;
    }//add timestamp
    
    //..................modifiers.................//
    
    modifier checkEmail(string memory _email) {
        require(emails[_email] == false, 'user with this email already exists!');
        _;
    }
    
    //...........................................//
    
    // mapping
    
    //from email to bool 
    //MAKE IT EMIAL TO PASSWORD
    mapping(string => bool) emails;
    
    //from orgAddress to bool
    ////
    
    //from id to organisation
    mapping(string => Organisation) organisations;
    
    //sign-in
    //also need to check if msg.sender is already there
    function createOrganization(string memory _name, string memory _desc, string memory _email, string memory _password, string memory _registrationId) public checkEmail(_email){ 
        //voting here
        emails[_email] =  true;
        organisations['org' + orgId] = Organisation(_name, _desc, _email, _password, 'org' + orgId, msg.sender, _registrationId, true/false);
        orgId++;
    }
    
    //log-in
    //use emails mapping for common login for donors or organisations
    
    //donor-sign-in
    
    
    
}
