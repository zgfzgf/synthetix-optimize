pragma solidity ^0.5.16;

import "../access/Owned.sol";
import "../access/State.sol";

contract TestableState is Owned, State {
    constructor(address _owner, address _associatedContract) public Owned(_owner) State(_associatedContract) {}

    function testModifier() external onlyAssociatedContract {}
}
