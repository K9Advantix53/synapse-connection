import React from 'react';

const TitleField = (props) => {
  return (
    <div className='field'>
      <input
        placeholder='Project Title'
        className='field'
        onChange={props.onChange}
        name={props.name}
        type='text'
        value={props.title}
      />
    </div>
  );
}

export default TitleField;
