import React, {Component} from 'react'
import ReactDOM from 'react-dom'
import {Link} from 'react-router-dom'
import Game from 'containers/Game'

class Landing extends Component {
  render() {
    return (
      <div style={{'textAlign': 'center', 'marginTop': '20%'}}>
        <h2>We created a game to see what type everybody really is</h2>
        <h3>What type is XYZ?</h3>

        <Link to="/play">
          <div onClick={()=> {console.log("HEY!")}} >
            Play!
          </div>
        </Link>

        <Game />

      </div>
    )
  }
}

export default Landing
