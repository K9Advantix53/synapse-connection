import React, { Component } from 'react'
import TitleField from '../components/TitleField'
import DescriptionField from '../components/DescriptionField'

class ProjectNewForm extends Component {
  constructor(props) {
    super(props)
    this.state = {
      new_project_title: '',
      new_project_description: ''
    }
    this.onTitleChange=this.onTitleChange.bind(this)
    this.onBodyChange=this.onBodyChange.bind(this)
    this.onClear=this.onClear.bind(this)
    this.handleSubmit=this.handleSubmit.bind(this)
  }

  onTitleChange(event) {
    this.setState({ new_project_title: event.target.value })
  }

  onBodyChange(event) {
    this.setState({ new_project_description: event.target.value })
  }

  onClear(event) {
    event.preventDefault()
    this.setState({ new_project_title: '', new_project_description: ''})
  }

  handleSubmit(event) {
    event.preventDefault()
    let payload = {
      title: this.state.new_project_title,
      description: this.state.new_project_description
    }
    fetch('/api/v1/projects', {
      credentials: "same-origin",
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    })
    this.setState({ new_project_title: '', new_project_description: ''})
    window.location.reload()
  }

  render() {
    return(
      <div>
        <div>
          <div className="new-project-form callout">
            <form>
              <div>
              <TitleField
                onChange={this.onTitleChange}
                title={this.state.new_project_title}
                label="Project Title"
                name="project-title"
              />
              </div>
              <div>
              <DescriptionField
                onChange={this.onBodyChange}
                description={this.state.new_project_description}
                label="Project Description"
                name="project-description"
              />
              </div>
              <div className="field">
                <button className="button" onClick={this.onClear}>Clear</button>
                <input className="button" type="submit" onClick={this.handleSubmit} value="Submit" />
              </div>
            </form>
          </div>
        </div>
      </div>
    )
  }
}

export default ProjectNewForm;
