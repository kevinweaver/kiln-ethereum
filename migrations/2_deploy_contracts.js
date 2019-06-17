const SimpleStorage = artifacts.require("SimpleStorage");
const TreasureToken = artifacts.require("TreasureToken");
const ComplexStorage = artifacts.require("ComplexStorage");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
  deployer.deploy(TreasureToken);
  deployer.deploy(ComplexStorage);
};
