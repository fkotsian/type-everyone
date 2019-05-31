import React, {Component} from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import {connect} from 'react-redux'
import {
  loadFigures
} from '../../actions'
import css from './style.scss'

class World extends Component {
  constructor(props) {
    super(props)
    this.state = {
    }
  }

  componentDidMount() {
    const worldId = this.props.match.params.worldId
    this.props.loadFigures(worldId)
  }
  render() {
    return (
      <div
        className="page-world"
      >
        <p>WORLD</p>
        <p>This page will display MOST-VOTED / VOTE-BREAKDOWN for each Figure</p>

        {
          this.props.figures.map(f => (
            <div>
              {f.name}
            </div>
          ))
        }
      </div>
    )
  }
}

World.propTypes = {
}

const mapStateToProps = (state) => {
  return {
    figures: state.figures.items,
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    loadFigures: mythosId => dispatch(loadFigures(mythosId)),
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(
  World
)
