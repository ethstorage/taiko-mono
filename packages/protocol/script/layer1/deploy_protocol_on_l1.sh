#!/bin/sh

# This script is only used by `pnpm test:deploy:l1`.
set -e

export PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
PROPOSER=0x0000000000000000000000000000000000000000 \
TAIKO_TOKEN=0x0000000000000000000000000000000000000000 \
PROPOSER_ONE=0x0000000000000000000000000000000000000000 \
GUARDIAN_PROVERS="0x1000777700000000000000000000000000000001,0x1000777700000000000000000000000000000002,0x1000777700000000000000000000000000000003,0x1000777700000000000000000000000000000004,0x1000777700000000000000000000000000000005,0x1000777700000000000000000000000000000006,0x1000777700000000000000000000000000000007" \
TAIKO_L2_ADDRESS=0x1000777700000000000000000000000000000001 \
L2_SIGNAL_SERVICE=0x1000777700000000000000000000000000000007 \
CONTRACT_OWNER=0x8be2c9379eb69877F25aBa61a853eC4FCb0b273a \
PROVER_SET_ADMIN=0x8be2c9379eb69877F25aBa61a853eC4FCb0b273a \
TAIKO_TOKEN_PREMINT_RECIPIENT=0x8be2c9379eb69877F25aBa61a853eC4FCb0b273a \
TAIKO_TOKEN_NAME="Taiko Token Test" \
TAIKO_TOKEN_SYMBOL=TTKOk \
SHARED_ADDRESS_MANAGER=0x0000000000000000000000000000000000000000 \
L2_GENESIS_HASH=0x608d99a7c3b38a2be08c5cd260158ee5fecb07c36a2700a0fc1a068c87be5ad5 \
PAUSE_TAIKO_L1=true \
PAUSE_BRIDGE=true \
NUM_MIN_MAJORITY_GUARDIANS=7 \
NUM_MIN_MINORITY_GUARDIANS=2 \
TIER_PROVIDER="devnet" \
FOUNDRY_PROFILE="layer1" \
forge script ./script/layer1/DeployProtocolOnL1.s.sol:DeployProtocolOnL1 \
    --fork-url http://localhost:8545 \
    --broadcast \
    --ffi \
    -vvvv \
    --private-key $PRIVATE_KEY \
    --block-gas-limit 100000000

export PRIVATE_KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
SECURITY_COUNCIL=0x8be2c9379eb69877F25aBa61a853eC4FCb0b273a \
TAIKO_TOKEN_PREMINT_RECIPIENT=0x8be2c9379eb69877F25aBa61a853eC4FCb0b273a \
TAIKO_TOKEN_NAME="Taiko Token" \
TAIKO_TOKEN_SYMBOL=TAIKO \
FOUNDRY_PROFILE="layer1" \
forge script ./script/layer1/DeployTaikoToken.s.sol:DeployTaikoToken \
    --fork-url http://localhost:8545 \
    --broadcast \
    --ffi \
    -vvvv \
    --private-key $PRIVATE_KEY \
    --block-gas-limit 100000000
