const Migrations = artifacts.require("METoken.sol");
module.exports = function (deployer) {
    deployer.deploy(Migrations);
};