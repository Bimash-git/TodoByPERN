import React, { useState } from 'react'

function InputTodo() {
  const [description, setDescription] = useState("");

  const onSubmitForm = async(e) => {
    e.preventDefault();
    try {
      const body = { description };
      const response = await fetch("http://localhost:5000/todos", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body)
      })

      console.log(response);
      window.location = "/"
    } catch (error) {
      console.error(error);
    }
  }

  return (
    <>
      <h1 className="headingName">
        Todo List
      </h1>
      <form>
        <input type="text" className='inputTodo' value={description} onChange={e => setDescription(e.target.value)} />
        <button onClick={onSubmitForm} className='btnAdd'>Add Todo!</button>
      </form>

    </>
  )
}

export default InputTodo;