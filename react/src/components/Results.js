import React, { Component } from 'react'
import ResultTile from './ResultTile'

class Results extends Component {
  constructor(props){
    super(props);
  }
  render() {
    let searched_projects = this.props.projects.map((result) => {
      return (
        <ResultTile
          key={result.id}
          id={result.id}
          name={result.title}
        />
      )
    })
    return(
      {searched_projects}
    )
  }
}

export default Results;
