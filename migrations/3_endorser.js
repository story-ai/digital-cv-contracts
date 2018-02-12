var AddressSet = artifacts.require("AddressSet");

var HashEndorser = artifacts.require("HashEndorser");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(AddressSet);
  deployer.link(AddressSet, HashEndorser);

  deployer.deploy(HashEndorser);
};
