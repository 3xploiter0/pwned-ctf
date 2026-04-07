// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title SkyPieVault
 */
contract SkyPieVault {
    bool public locked;
    uint256 public treasuryBalance;
    address public owner;

    bytes32 private _secretIngredient;
    bytes32 private _vaultKey;

    struct Recipe {
        uint64  id;
        uint64  timestamp;
        bytes16 name;
    }

    Recipe private _recipe;

    bytes32 private _flagPart1;
    bytes32 private _flagPart2;

    event VaultAccessed(address indexed who, bool success);
    event RecipeLocked(uint256 timestamp);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the baker!");
        _;
    }

    constructor(
        bytes32 secretIngredient,
        bytes32 vaultKey,
        bytes32 flagPart1,
        bytes32 flagPart2
    ) {
        locked = true;
        treasuryBalance = 1337 ether;
        owner = msg.sender;

        _secretIngredient = secretIngredient;
        _vaultKey = vaultKey;

        _recipe = Recipe({
            id: 42,
            timestamp: uint64(block.timestamp),
            name: bytes16("sky_pie_supreme")
        });

        _flagPart1 = flagPart1;
        _flagPart2 = flagPart2;

        emit RecipeLocked(block.timestamp);
    }

    function unlock(bytes32 key) external {
        if (key == _vaultKey) {
            locked = false;
            emit VaultAccessed(msg.sender, true);
        } else {
            emit VaultAccessed(msg.sender, false);
            revert("Wrong key! The pie remains sealed.");
        }
    }

    /**
     * @notice View the recipe, but only if the vault is unlocked.
     */
    function getRecipe() external view returns (string memory) {
        require(!locked, "Vault is locked! Nice try.");
        return "The recipe is a lie. Look deeper.";
    }

    /**
     * @notice Definitely not suspicious at all.
     */
    function bakePie() external pure returns (string memory) {
        return "Baking... but where's the secret ingredient?";
    }

    /**
     * @notice Emergency re-lock.
     */
    function emergencyLock() external onlyOwner {
        locked = true;
    }
}
