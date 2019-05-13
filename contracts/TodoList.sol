pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;

    struct task{
        uint id;
        string detail;
        bool completed;

    }

    mapping(uint => task) public tasks;

    constructor() public {
        createTask("complete MTP");
    }

    function createTask(string memory _content) public{
        taskCount ++;
        tasks[taskCount] = task(taskCount, _content, false);
    }

}