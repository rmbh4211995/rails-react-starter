import React, { useState, useEffect } from "react";

export const Jokes = () => {
  const [jokes, setJokes] = useState([]);

  useEffect(() => {
    fetch("api/jokes")
      .then((data) => {
        if (data.ok) return data.json();
        throw new Error("Network error");
      })
      .then((data) => {
        setJokes(data);
      })
      .catch((err) => {
        console.error("Error setting jokes data", err);
      });
  }, []);

  return (
    <div>
      {jokes.map((j) => (
        <div key={j.id}>
          <p>{j.title}</p>
          <p>{j.description}</p>
          <p>{j.author}</p>
        </div>
      ))}
    </div>
  );
};
