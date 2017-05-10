import React, { Component } from 'react'
import ResultTile from '../components/ResultTile'

class ProjectIndexContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      projects: [],
    }
  }

  componentWillMount() {
    fetch('http://localhost:3000/api/v1/projects')
      .then(response => response.json())
      .then(body => {
        this.setState({ projects: body })
      })
  }

  render() {
    let all_projects = this.state.projects.map (project => {
      return(
        <ResultTile
          key={project.id}
          id={project.id}
          title={project.title}
          body={project.description}
          logo_url={project.logo_url}
        />
      )
    })
    return(
      <div>
        <div>
          {all_projects}
        </div>
      </div>
    )
  }
}

export default ProjectIndexContainer;
