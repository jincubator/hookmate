# Hookmate

## Overview

A library for Uniswap v4 hook development. Does not provide it's own dependencies, but rather provides libraries for simplified development.

This allows the use of later versions of the solidity compiler then you could by directly accessing the periphery [V4Router](https://github.com/Uniswap/v4-periphery/blob/main/src/V4Router.sol) which is limited to `pragma solidity 0.8.26;`.

It uses the community [V4Router](https://github.com/z0r0z/v4-router).

It also has helper functions for deployment including address helpers for supported chains and `Permit2` and `Permit3` support.

The jincubator fork also includes libraries used for developing both the UniIntentSwapV4Router04 and the IntentSwapHook. These libraries are used in the jincubator protocol and v4-router repositories allowing separation of logic between router and hook development.

`Permit3` allows you to use the same contract addresses across multiple chains regardless of the input values to the contructor.

## Contracts

This initcode bytecode can be generated as follows for the contracts in their respective repositories.
Note: You will need to clone the repos locally and do a `forge install` and potentially a `yarn install`. This may give a difference in the last few characters the metadata-hash. If this effects you then look at getting the initcode using a command like `solc --metadata-hash none`

- [V4Router](https://github.com/z0r0z/v4-router/blob/main/src/UniswapV4Router04.sol): `forge inspect UniswapV4Router04 bytecode`
- [V4IntentRouter](https://github.com/jincubator/v4-router/blob/main/src/UniSwapV4IntentRouter.sol): `forge inspect UniswapV4IntentRouter bytecode`
- [V4PoolManager](https://github.com/Uniswap/v4-core/blob/main/src/PoolManager.sol): `forge inspect PoolManager bytecode`
- [V4PositionManager](https://github.com/Uniswap/v4-periphery/blob/main/src/PositionManager.sol): `forge inspect PositionManager bytecode`
- [IntentSwapHook](https://github.com/jincubator/protocol/blob/main/src/IntentSwapHook.sol): `forge inspect IntentSwapHook bytecode`
- [Counter](https://github.com/uniswapfoundation/v4-template/blob/main/src/Counter.sol): `forge inspect Counter bytecode`

The following additional helper contracts are available

- Permit2
- DeployHelper
- AddressConstants

The following interfaces are available

- IUniswapV4Router04
- PathKey

The following constants are available.

- AddressConstants: Gets `permit2`, `PoolManager`, `PositionManager`, and `V4SwapRouter` addresses for supported chains.
