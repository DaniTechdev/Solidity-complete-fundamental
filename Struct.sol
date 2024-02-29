// SPDX-License-Identifier: MIT

//NOTES
//---But one thing to keep in min while writing solidit smart contract
//---Compiler version must be greater than 0.8.12 and less than 0.9.0;

pragma solidity ^0.8.13;


contract Todos{
    struct Todo{
        string text;
        bool completed;

    }

    //An array of "Todo" structs
    //Note every struct must have an array to store the struct data

    Todo[] public todos;

    function create(string calldata _text) public {
        //# 3 ways to initialize a struct
        //1 By calling it like a function

        todos.push(Todo(_text,false));

        //2 Key value mapping

        // todos.push(Todo({text:_text, completed: false}));

        // //3 initialize an empty struct and then update the todos;
        //  Todo memory todo;
        //  todo.text = _text;
        // //  todo.completed = false;
        // //todo.completed initialized to false

        // todos.push(todo);
    }

    //Solidity authomitocally created a getter for "todos" so 
    //you dont actually need this function

    function get(uint _index) public view returns (string memory text, bool completed){
         Todo storage todo = todos[_index];

         return (todo.text, todo.completed);
    }

    //update text

    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    //update completed
    function toggleCompleted(uint _index) public{
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }



}