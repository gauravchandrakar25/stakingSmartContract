# NFT Staking

This repo contains smart contracts to implement the Staking functionality in an NFT collection.

-> Solidity is used to implement this projects

This repo contains 3 smart contracts which defines 3 contracts

1. A NFT Collection Smart Contract which is developed using ERC721 protocol (Collection.sol)
2. Reward token smart contract is developed using the ERC20 protocol (RewardToken.sol)
3. Staking smart contract inherits from NFTCollection and reward token to stake the tokens (NFTStaking.sol)

## Steps to be followed 

1. Deploy the smart contract in following order:
      - NFT Collection Smart Contract
      - ERC20 Reward token
      - Staking Smart Contract (it requires address of NFT Collection and ERC20 token)
      
2. Mint an NFT using `mint()` method.
3. Call the `setApprovalForALL()` method by putting the address of staking smart contract's address as the argument with true as the second argument.
4. Call `addControllers()` to add controller for claiming reward.
5. Use the staking contract to call the `stake()` method to stake the NFTs. This `stake()` take tokenIDs as arguments in an array e.g. [1,2,3]
6. Before claiming the tokens import the Reward Tokens in metamask using the metamask import token so that the owner can interact using metamask.
      
