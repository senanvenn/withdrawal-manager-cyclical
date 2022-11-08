// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.7;

interface IWithdrawalManagerInitializer {

    event Initialized(address pool_, uint256 cycleDuration_, uint256 windowDuration_);

    function decodeArguments(bytes calldata encodedArguments_) external pure
        returns (address pool_, uint256 cycleDuration_, uint256 windowDuration_);

    function encodeArguments(address pool_, uint256 cycleDuration_, uint256 windowDuration_) external pure
        returns (bytes memory encodedArguments_);

}
