import React, { Component } from 'react'
import Project from '../components/Project'
import TitleField from '../components/TitleField'
import DescriptionField from '../components/DescriptionField'

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
        <Project
          key={project.id}
          id={project.id}
          title={project.title}
          description={project.description}
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
