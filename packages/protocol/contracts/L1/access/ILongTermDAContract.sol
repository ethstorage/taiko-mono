// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface ILongTermDAContract {
    function putBlob(bytes32 key, uint256 blobIdx, uint256 length) external payable;
    function upfrontPayment() external view returns (uint256);
}
