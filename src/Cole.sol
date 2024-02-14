//SPDX-License-Identifier:MIT

pragma solidity ^0.8.23;

/**
 * @title Music Nft  Contract
 * @author Owusu Nelson Osei Tutu
 * @notice An nft collection of J Cole's Album(Forest Hill Drive)
 */

import {ERC721URIStorage,ERC721} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Cole is ERC721URIStorage,Ownable{
   constructor(address initialOwner) ERC721('Forest Hill Drive','FHD') Ownable(initialOwner){}

   function mint(address _to,uint256 tokenId,string calldata _uri) external onlyOwner{
     _mint(_to,tokenId);
     _setTokenURI(tokenId,_uri);
   }
}