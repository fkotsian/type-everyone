import React, {Component} from 'react'
import ReactDOM from 'react-dom'
import {connect} from 'react-redux'
//import Navbar from 'containers/Navbar'
//import Game from 'containers/Game'

class App extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <div className="root">

      </div>
    )
  }
}

export default connect(
  null,
  null,
)(App)
