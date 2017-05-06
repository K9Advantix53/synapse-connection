import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import ProjectIndexContainer from './containers/ProjectIndexContainer'
import ProjectNewForm from './containers/ProjectNewForm'
import ProjectShowContainer from './containers/ProjectShowContainer'
import JoinButton from './components/JoinButton'

$(function() {
  if (document.getElementById('projectIndex')) {
    ReactDOM.render(
      <ProjectIndexContainer />,
      document.getElementById('projectIndex')
    );
  }
});

$(function() {
  if (document.getElementById('projectShow')) {
    ReactDOM.render(
      <ProjectShowContainer />,
      document.getElementById('projectShow')
    );
  }
});

$(function() {
  if (document.getElementById('joinButton')) {
    ReactDOM.render(
      <JoinButton />,
      document.getElementById('joinButton')
    );
  }
});

$(function() {
  if (document.getElementById('projectForm')) {
    ReactDOM.render(
      <ProjectNewForm />,
      document.getElementById('projectForm')
    );
  }
});
