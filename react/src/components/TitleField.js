import React from 'react';

const TitleField = (props) => {
  return (

      <input
        placeholder='Project Title'
        className='titleField'
        onChange={props.onChange}
        name={props.name}
        type='text'
        value={props.title}
      />

  );
}

export default TitleField;
