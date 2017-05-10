import React, { Component } from 'react';

class ResultTile extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div className='project'>
        <div className='projectTitle'>
          <a href={`projects/${this.props.id}`}>{this.props.title}</a>
        </div>
        <div className='projectBody'>
          <p>{this.props.body}</p>
        </div>
        <div className='inter'>

        </div>
      </div>
    )
  }
}

export default ResultTile;
