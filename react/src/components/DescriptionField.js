import React from 'react';

const DescriptionField = (props) => {
  return (
    <div className='field'>
      <textarea
        placeholder='Project Description'
        className='field'
        onChange={props.onChange}
        name={props.name}
        type='text'
        value={props.description}
        rows={7}
      />
    </div>
  );
}

export default DescriptionField;
