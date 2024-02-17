import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { fetchRandomGreeting } from '../redux/reducers/greetingSlice';

const Greeting = () => {
  const dispatch = useDispatch();
  const message = useSelector((state) => state.greeting.message);

  useEffect(() => {
    dispatch(fetchRandomGreeting());
  }, []);

  return <h2>Hi!: {message}</h2>;
};

export default Greeting;
