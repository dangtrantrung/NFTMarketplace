//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;
import "artifacts/hardhat/console.sol";
import "@oppenzeppelin/contracts/token/extension/ERC721URIStorage.sol";
import "@oppenzeppelin/contracts/token/extension/ERC721Enumerable.sol";
import "@oppenzeppelin/contracts/utils/Counters.sol";

contract MonoNFT is ERC721URIStorage, ERC721Enumerable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIDs;

    constructor() ERC721("MonoNFT", "Mono");

    function giveAway(address to) public returns (uint256) {
        uint tokenId = _tokenIds.current();
        string
            memory mockTokenUR = "https://f002.backblazeb2.com/file/pixelknight/2594.json";
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, mockTokenURI);
    }
    //before token transfer
}
