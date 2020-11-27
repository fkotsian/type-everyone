import React, {Component} from 'react'
import ReactDOM from 'react-dom'
import {Link} from 'react-router-dom'
import Game from 'containers/Game'
import axios from 'axios'

const FIGURES = [
  "Benjamin Franklin",
  "J. Cole",
  "Serena Williams",
  "Ada Lovelace",
  "Barack Obama",
  "Joe Biden",
  "Kobe Bryant",
  "Michael Jordan",
  "Bill Belichick",
  "Chamath Palihapitya"
]

class Landing extends Component {
  constructor(props) {
    super(props)

    this.state = {
      worlds: [],
      currentFigure: this.randomFigure(),
    }
  }

  componentDidMount() {
    axios.get('/api/v1/mythoi').then(worlds => {
      console.log("got mythoi")
      console.log(worlds.data)
      this.setState({ worlds: worlds.data })
    })

    this.figureTimeout = setInterval(() => {
      this.setState({
        currentFigure: this.randomFigure()
      })
    }, 2400)
  }

  componentWillUnmount() {
    this.figureTimeout && this.figureTimeout()
  }

  randomFigure = () => {
    return FIGURES[Math.floor(Math.random() * FIGURES.length)]
  }

  render() {
    return (
      <div class="ui container">
        <div className="ui vertical masthead center aligned basic segment" style={{minHeight: "400px", display: "flex", alignItems: "center"}}>
          <div className="ui text container">
            <h1 class="ui massive header">What is <span style={{borderBottom: "2px solid black", minWidth: "400px"}}>{this.state.currentFigure}</span>'s type?</h1>
            <h2>We made a game to guess along with everybody else</h2>

            <Link to="/play">
              <div className="ui large inverted primary button" onClick={()=> {console.log("HEY!")}} >
                Play!
              </div>
            </Link>
          </div>
        </div>

        <div className="center aligned basic segment">
          <div class="ui center aligned container">
            <h2>Choose a Category</h2>
            <div className="ui three cards">
              {
                this.state.worlds.map(w => (
                  <div className="ui card">
                    <div className="image">
                      <img src={w.image_url} />
                    </div>
                    <div className="content">
                      <a className="header">
                        {w.name}
                      </a>
                      <div className="meta">
                        <span className="date">{w.category}</span>
                      </div>
                    </div>
                  </div>
                ))
              }
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default Landing
