// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MountainsNFT is ERC721URIStorage, Ownable {

  uint256 public totalSupply;

  constructor () ERC721("Mountains", "MTNS") {
     totalSupply = 0;
  }

  function mint(address _to, string calldata _uri) external onlyOwner {
    uint256 curTotalSupply = totalSupply + 1;

    _mint(_to, curTotalSupply);
    _setTokenURI(curTotalSupply, _uri);

    totalSupply +=1;
  }
}