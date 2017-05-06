import React, { Component } from 'react'

class ProjectShow extends Component {
  constructor(props) {
    super(props);
    this.state={
      
    }
  }

  render() {
    return(
      <div>
        <h3 className='projectTitle'>{this.props.title}</h3>
        <div>
          <p>{this.props.description}</p>
        </div>
        <div>
          <p>{this.props.owner}</p>
        </div>
      </div>
    )
  }
}

export default ProjectShow;
