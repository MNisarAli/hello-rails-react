import React, { useState, useEffect } from 'react';

const Greeting = () => {
  const [message, setMessage] = useState('');

  useEffect(() => {
    fetch('/random_greeting')
      .then(response => response.json())
      .then(data => setMessage(data.message));
  }, []);

  return <h2>{message}</h2>;
};

export default Greeting;
