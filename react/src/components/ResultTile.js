import React, { Component } from 'react';

class ResultTile extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    let url = this.props.logo_url;
    return(
      <a href={`projects/${this.props.id}`} className='project'>
        <div className='projectTitle'>
          <a href={`projects/${this.props.id}`}>{this.props.title}</a>
        </div>
        <img src={assetHelper[url]} className='projectLogo'></img>
      </a>
    )
  }
}

export default ResultTile;
