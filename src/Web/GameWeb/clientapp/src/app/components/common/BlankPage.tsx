import React from 'react';
import { Route } from 'react-router';

const  BlankPage = (props: {message:string} ) => {
  return (
    <div>
      <h4>{props.message}</h4>
    </div>
  );
}

export default BlankPage;
