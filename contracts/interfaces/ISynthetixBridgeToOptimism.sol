pragma solidity >=0.4.24;
pragma experimental ABIEncoderV2;


interface ISynthetixBridgeToOptimism {
    // Invoked by the relayer on L1
    function finalizeWithdrawal(address account, uint amount) external;

    // The following functions can be invoked by users on L1
    function deposit(uint amount) external;

    function depositTo(address to, uint amount) external;

    function initiateEscrowMigration(uint256[][] calldata entryIDs) external;

    function initiateRewardDeposit(uint amount) external;

    function depositAndMigrateEscrow(uint256 depositAmount, uint256[][] calldata entryIDs) external;
}
