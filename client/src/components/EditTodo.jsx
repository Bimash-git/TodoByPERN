import React, { useState } from 'react'

export default function EditTodo({todo}) {
    const [description, setDescription] = useState(todo.description);

    const updateDescription = async(e) => {
        e.preventDefault();
        try {
            const body = { description };
            const response = await fetch(`http://localhost:5000/todos/${todo.todo_id}`, {
                method: "PUT",
                headers: { "Content-Type": "application/json"},
                body: JSON.stringify(body)
            })
            window.location = "/";
        } catch (error) {
            console.log(error);
        }
    }

    return (
        <>
            <button type="button" className="btn btn-info btn-lg" data-toggle="modal" data-target={`#id${todo.todo_id}`} >Edit</button>

            <div id={`id${todo.todo_id}`} className="modal fade" role="dialog" onClick={() => setDescription(todo.description)}>
                <div className="modal-dialog">

                    <div className="modal-content">
                        <div className="modal-header">
                            <button type="button" className="close" data-dismiss="modal" onClick={() => setDescription(todo.description)}>&times;</button>
                            <h4 className="modal-title">Edit Todo</h4>
                        </div>
                        <div className="modal-body">
                            <input type="text" className="form-control" value={description} onChange={e => setDescription(e.target.value)}/>
                        </div>
                        <div className="modal-footer">
                            <button type="button" className="btn btn-warning" data-dismiss="modal" onClick={e => updateDescription(e)}>Edit</button>
                            <button type="button" className="btn btn-default" data-dismiss="modal" onClick={() => setDescription(todo.description)}>Close</button>
                        </div>
                    </div>

                </div>
            </div>
        </>
    )
}
