import React, { Component } from 'react'
import SearchBar from '../components/SearchBar'
import ResultTile from '../components/ResultTile'

class ProjectSearchContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      search: '',
      results: []
    }
    this.fetchSearchResults = this.fetchSearchResults.bind(this);
    this.handleSearchChange = this.handleSearchChange.bind(this);
  }

  fetchSearchResults() {
    let search = { search: this.state.search }
    fetch(`/api/v1/searches`, {
      method: 'POST',
      credentials: 'same-origin',
      headers: { "Content-Type": "application/json"},
      body: JSON.stringify(search)
    })
    .then(response => response.json())
    .then(body => {
      this.setState({ results: body})
    });
  }

  handleSearchChange(event) {
    this.setState({ search: event.target.value })
    this.fetchSearchResults();
  }

  render() {
    let search_results = this.state.results.map((result) => {
      return(
        <ResultTile
          key={result.id}
          id={result.id}
          title={result.title}
          body={result.description}
        />
      )
    })
    return(
      <div>
        <SearchBar
          search={this.state.search}
          onChange={this.handleSearchChange}
        />
        <div className='results'>
          {search_results}
        </div>
      </div>
    )
  }
}


export default ProjectSearchContainer;
