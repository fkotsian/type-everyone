import React, {Component} from 'react'
import ReactDOM from 'react-dom'
import {connect} from 'react-redux'
import {Link, Route, withRouter} from 'react-router-dom'
//import Navbar from 'containers/Navbar'
import Landing from 'containers/Landing'
import Game from 'containers/Game'
import Worlds from 'containers/Worlds'
import World from 'containers/World'

class App extends Component {
  constructor(props) {
    super(props)
  }

  render() {
    return (
      <div className="root">
        <Route exact path="/" component={Landing} />
        <Route path="/play/:worldId" component={Game} />
        <Route exact path="/play" component={Game} />
        <Route exact path="/worlds/:worldId" component={World} />
        <Route exact path="/worlds" component={Worlds} />
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
