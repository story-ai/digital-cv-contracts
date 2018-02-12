pragma solidity ^0.4.18;

import {AddressSet} from "./AddressSet.sol";

contract HashEndorser {
  
  mapping(bytes32 => AddressSet.Data) endorsements;

  function endorse(bytes32 doc) public {
    AddressSet.insert(endorsements[doc], msg.sender);
  }

  function getEndorsements(bytes32 doc) public view returns (address[]) {
    return endorsements[doc].addresses;
  }
}


/*
  - Reviewer endorses that a document is legitimate, and belongs to the owner of the included address
  - Reviewer calculates hash of the doc (which includes owner's address), and endorses it

*/