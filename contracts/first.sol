pragma solidity ^0.4.17; 

contract Inbox {
    string public message;
    function Inbox(string InitialMessage) public {
        message = InitialMessage;
    }
    function setMessage(string NewMessage) public {
        message = NewMessage;
    }
    function getMessage() public view returns (string) {
        return message;
    }
}