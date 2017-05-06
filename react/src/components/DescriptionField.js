import React from 'react';

const DescriptionField = (props) => {
  return (
      <textarea
        placeholder='Project Description'
        className='titleField'
        onChange={props.onChange}
        name={props.name}
        type='text'
        value={props.description}
        rows={7}
      />
  );
}

export default DescriptionField;
