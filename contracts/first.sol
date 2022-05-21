pragma solidity ^0.4.17; 

contract Inbox {
    string public message;
    function Inbox(string InitialMessage) public {
        message = InitialMessage;
    }
    function setMessage(string NewMessage) public {
        message = NewMessage;
    }
}