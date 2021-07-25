pragma solidity ^0.5.16;

import "../base/BaseMigration.sol";
import "../access/Owned.sol";

contract MockMigration is BaseMigration {
    constructor(address _owner) public BaseMigration(_owner) {}

    function canOnlyBeRunByDeployer() external onlyDeployer {}

    function acceptOwnership(address someContract) external {
        Owned(someContract).acceptOwnership();
    }
}
