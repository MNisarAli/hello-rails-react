import React, { useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { fetchRandomGreeting } from '../reducers/greetingSlice';

const Greeting = () => {
  const dispatch = useDispatch();
  const message = useSelector((state) => state.greeting.message);

  useEffect(() => {
    dispatch(fetchRandomGreeting());
  }, [dispatch]);

  return <h2>{message}</h2>;
};

export default Greeting;
