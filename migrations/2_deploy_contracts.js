const DolphinSightings = artifacts.require("DolphinSightings");

module.exports = function(deployer) {
  deployer.deploy(DolphinSightings);
};
