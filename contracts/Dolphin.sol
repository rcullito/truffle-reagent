pragma solidity ^0.5.0;

contract DolphinSightings {

  /*** GAME STATE ***/

  mapping (address => uint256) public addressSightingCount;

  uint256 public travelFee = 2 finney;
  uint256 public guideFee = 10 finney;

  struct riverDolphin {
    uint16 riverIndex;
    string name;
  }

  /*** CONSTANTS ***/
  
  // eventually split these groups of 3 rivers into different regions
  // can be one of East Asia, Indus, or South America
  string[9] public rivers = [
                             "amazon",
                             "bolivian",
                             "orinoco",
                             "ganges",
                             "indus",
                             "irrawady",
                             "mekong",
                             "mahakam",
                             "yangtze"
                             ];

  /*** FUNCTIONS ***/

  
  // for now a travel results in a sighting
  // eventually introduce a bit of randomness
  function travelDownRiver()
    external
    payable
  {
    require(msg.value >= travelFee);
    
    addressSightingCount[msg.sender]++;
  }

}

