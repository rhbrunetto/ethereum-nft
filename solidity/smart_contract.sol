// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MountainsNFT is ERC721URIStorage, Ownable {

  uint256 public totalSupply;
  mapping(string => uint256) private idToCount;

  constructor () ERC721("Mountains", "MTNS") {
     totalSupply = 0;
  }

  function nextForIdentifier(string calldata _identifier) public view returns (uint256) {
    return idToCount[_identifier];
  }

  function mint(
    address _to,
    string calldata _uri,
    string calldata _identifier,
    uint256 _count
  ) external onlyOwner {
    require(idToCount[_identifier] == _count, "Invalid count number.");

    uint256 curTotalSupply = totalSupply + 1;

    _mint(_to, curTotalSupply);
    _setTokenURI(curTotalSupply, _uri);

    totalSupply +=1;
    idToCount[_identifier] += 1;
  }
}