import React from 'react';

const SearchBar = (props) => {
  return (
    <div className='searchBar'>
      <input id='searchBar' name="search" type="text" onChange={props.onChange} value={props.search} placeholder='Search For A Project...'/>
    </div>
  );
}

export default SearchBar;
