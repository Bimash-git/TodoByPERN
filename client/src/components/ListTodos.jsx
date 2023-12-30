import React, { useEffect, useState } from 'react';
import EditTodo from './EditTodo';

function ListTodos() {

    const [todos, setTodos] = useState([]);

    // delete function
    const deleteTodo = async(id) => {
        try {
            const delTodo = await fetch(`http://localhost:5000/todos/${id}`, {
                method: "DELETE"
            });
            // console.log(delTodo);
            setTodos(todos.filter(todo => todo.todo_id !== id));
        } catch (error) {
            console.error(error.message);
        }
    }

    const getTodos = async () => {
        try {
            const response = await fetch("http://localhost:5000/todos");
            const jsonData = await response.json();
            setTodos(jsonData);
            // console.log(jsonData);

        } catch (error) {
            console.log(error.message);
        }
    }

    useEffect(() => {
        getTodos();
    }, []);
    console.log(todos);

    return (
        <>
            <h1>Todo Lists below !!</h1>
            <table className="table">
                <thead>
                    <tr>
                        <th>Description</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        todos.map(todo => (
                            <tr key={todo.todo_id}>
                                <td>{todo.description}</td>
                                <td>
                                    <EditTodo todo={todo} />
                                </td>
                                <td><button className='delButton' onClick={() => deleteTodo(todo.todo_id)}>Delete</button></td>
                            </tr>
                        ))
                    }

                </tbody>
            </table>
        </>
    )
}

export default ListTodos;