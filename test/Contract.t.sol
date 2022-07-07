// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

import "../lib/forge-std/src/Test.sol";

import "../src/Contract.sol";


contract HooperVerseTest is Test{
    // event Transfer(address indexed from, address indexed to, uint256 amount);

    HooperCollectible hooper;
    function setUp() public {
        hooper = new HooperCollectible();
    }


    // function testsetPrice() public {
    //     hooper.setPrice(5000);
    //     uint y = hooper.getPrice();
    //     assertEq(y, 5000);
    // }

    function testTier() public{
        hooper.updateTier(address(1) , 3);
        // uint x = hooper.getTier(address(1));
        // console.logUint(x);

        // hooper.updateTier(address(1) , 2);
        // uint y = hooper.getTier(address(1));
        // console.logUint(y);
        
        // hooper.updateTier(address(1) , 3);
        // uint z = hooper.getTier(address(1));
        // console.logUint(4);

        hooper.setWhitelistPrice(0.02 ether);
        vm.startPrank(address(1));
        // hooper.getMintAllowance(address(1));
        vm.deal(address(1), 2 ether );
        vm.warp(1656572401);
        hooper.mint{value: 0.09 ether}();
        hooper.mint{value: 0.09 ether}();
        hooper.mint{value: 0.09 ether}();
        // hooper.mint{value: 0.09 ether}();


        vm.stopPrank();

        vm.startPrank(address(2));

        vm.deal(address(2), 2 ether );

        hooper.mint{value: 0.09 ether}();

        // hooper.mint{value: 0.09 ether}();
        // hooper.mint{value: 0.09 ether}();
        // hooper.mint{value: 0.09 ether}();
        // hooper.mint{value: 0.09 ether}();
        // hooper.mint{value: 0.09 ether}();
        // hooper.mint{value: 0.09 ether}();
        // hooper.mint{value: 0.09 ether}();
        // hooper.mintBatch{value: 1 ether}(6);

    }

    // function testMint() public payable{ 
    //     hooper.updateTier(address(1) , 3);
    //     uint z = hooper.getTier(address(1));
    //     console.logUint(z);

    //     hooper.setWhitelistPrice(0.02 ether);
    //     vm.startPrank(address(1));
    //     hooper.getMintAllowance(address(1));
    //     vm.deal(address(1), 2 ether );
    //     vm.warp(1656572401);
    //     hooper.mint{value: 0.09 ether}();
    //     hooper.mint{value: 0.09 ether}();

    // }

    // function testmintBatch() public payable {
    //     hooper.updateTier(address(1) , 10);
        
    //     hooper.setWhitelistPrice(0.02 ether);
    //     vm.startPrank(address(1));
    //     hooper.getMintAllowance(address(1));
    //     vm.deal(address(1), 2 ether );
    //     vm.warp(1656572401);
    //     hooper.mintBatch{value: 1 ether}(4);
    //     console.logUint(hooper.minted());
    //     hooper.mintBatch{value: 1 ether}(4);
    //     console.logUint(hooper.minted());

    // } 

    // function testmint() public payable{
    //     vm.warp(1656572401);
    //     hooper.transferOwnership(address(1));
    //     vm.startPrank(address(1));
    //     hooper.mint();
    // }

    // function testmintBatchForOwner() public payable{
    //     vm.warp(1656572401);
    //     hooper.transferOwnership(address(1));
    //     vm.startPrank(address(1));
    //     hooper.mintBatch(10);
    // }

//     function testWithdrawl() public payable {
//         hooper.updateTier(address(1), 10);
//         hooper.setWhitelistPrice(0.02 ether);
//         vm.startPrank(address(1));
//         vm.deal(address(1), 2 ether );
//         vm.warp(1656572401);
//         hooper.mint{value: 0.02 ether}();
//         hooper.mint{value: 0.02 ether}();
//         vm.stopPrank();
//         hooper.withdrawAllFromWalletBalance(payable(address(2)));
//         console.logUint(address(2).balance);
//     }
}

    










