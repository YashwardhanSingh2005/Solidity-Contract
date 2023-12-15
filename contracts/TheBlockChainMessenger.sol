//SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract TheMessenger {
    constructor(address _myAddress){
        myAdress = _myAddress;
    }
    string public myString = "Hello World";
    address myAdress;
    uint public transactionCount;
    function updatemyString(string memory _mystring) public {
        if( msg.sender == myAdress){
            myString = _mystring ;
            transactionCount++;
        }
    

    }

}