import React, {Component} from 'react'
import ReactDOM from 'react-dom'
import {connect} from 'react-redux'
import {
  loadMythoi
} from '../../actions'
import styles from './styles.module.scss'

class Worlds extends Component {
  constructor(props) {
    super(props)
  }
  componentDidMount() {
    this.props.loadMythoi()
  }
  componentWillReceiveProps(newProps) {
    console.log("NEW PROPS!")
    console.log(newProps)
  }

  render() {
    return (
      <div className="page-worlds">
        <div>
          Worlds!
        </div>
        <div
          style={{
            display: 'flex',
            flexFlow: 'row wrap',
            justifyContent: 'center',
            alignItems: 'center',
            height: '100%',
            width: '100%',
          }}
        >
          {
            this.props.mythoi.map(m => (
              <div
                key={m.id}
                className="mythos-container"
              >
                <p>
                  {m.name}
                </p>
                <div
                  className="mythos-image"
                  style={{
                    backgroundImage: `url(${m.image_url})`,
                  }}
                >
                </div>
              </div>
            ))
          }
        </div>
      </div>
    )
  }
}

const mapStateToProps = (state) => {
  return {
    mythoi: state.mythoi.items,
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    loadMythoi: () => dispatch(loadMythoi()),
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(
  Worlds
)
