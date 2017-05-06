import React, { Component } from 'react'
import ProjectShow from '../components/ProjectShow'

class ProjectShowContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      projects: [],
      project: {}
    }
  }

  componentDidMount() {
    fetch('http://localhost:3000/api/v1/projects')
      .then(response => response.json())
      .then(body => {
        this.setState({ projects: body })
      })
    fetch('http://loca')
  }

  render() {
    let id_project = this.state.projects.map (project => {
      if (document.URL.replace("http://localhost:3000/projects/", "") == project.id) {
        return(
          <ProjectShow
            key={project.id}
            id={project.id}
            title={project.title}
            description={project.description}
            owner_id={project.owner_id}
          />
        )
      }
    })
    return(
      <div>
        {id_project}
      </div>
    )
  }
}

export default ProjectShowContainer;
