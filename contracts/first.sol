pragma solidity ^0.4.17; 

contract Inbox {
    string public message;
    function Inbox(string InitialMessage) public {
        message = InitialMessage;
    }
    function setMessage(string NewMessage) public {
        message = NewMessage;
    }
    //gas price calculation according to kinds of operation:
    function doMath (int a, int b) {
        a + b; //3 gas
        a - b; //3 gas
        a * b; //5 gas
        a == 0;//3 gas
        //---------------+
        //       14 gas
    }
    //gas paid in wei
    //gasPrice :  how much wei we willing to pay to run this,
    // ex: gasPrice=10, then we have addition, means we're going to pay 30 wei
    //gasLimit: how much gas we maximum want to do in a contract
    // ex: gasLimit = 10, then maximum we have 10 gas per run
    // then we want to run doMath, doMath at total costs 14 gas, 
    // operation 1 and 2 costs 6 gas, then next in total costs 11 gas, 
    // since gasLimit=10, the execution halts at operation 2, since running 3 will cost us more than the limit
    // you only spend gas on your function needs, not the whole gasLimit
    
}