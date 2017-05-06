import React, { Component } from 'react'

class Project extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return(
      <div id='projectIndexBox'>
        <div id='projectIndexEntry'>
          <a href={`projects/${this.props.id}`}>{this.props.title}</a>
        </div>
      </div>
    )
  }
}

export default Project;
