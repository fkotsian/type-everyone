import React, {Component} from 'react'
import ReactDOM from 'react-dom'
import {connect} from 'react-redux'
import {Link, Route, withRouter} from 'react-router-dom'
//import Navbar from 'containers/Navbar'
import Landing from 'containers/Landing'
import Game from 'containers/Game'

class App extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <div className="root">
        <Route exact path="/" component={Landing} />
        <Route path="/play" component={Game} />
      </div>
    )
  }
}

export default withRouter(
  connect(
    null,
    null,
  )(App)
)
