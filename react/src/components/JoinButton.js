import React, { Component } from 'react'

class JoinButton extends Component {
  constructor(props) {
    super(props)
    this.onClick=this.onClick.bind(this)
  }

  onClick(event) {
    event.preventDefault()
    let payload = {
      project_id: parseInt(document.URL.replace('http://localhost:3000/projects/', ''))
    }
    fetch('/api/v1/assignments', {
      credentials: "same-origin",
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    })
  }

  render() {
    return(
      <div>
        <button onClick={this.onClick}>Join</button>
      </div>
    )
  }
}

export default JoinButton;
