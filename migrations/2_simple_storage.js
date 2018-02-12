var SimpleStorage = artifacts.require("SimpleStorage");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(SimpleStorage);
};
