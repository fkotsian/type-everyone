import React, {Component} from 'react'
import ReactDOM from 'react-dom'
import {connect} from 'react-redux'
import {
  loadFigures
} from '../../actions'
import BackgroundCheck from 'background-check/background-check.min.js'
import styles from './styles.module.scss'

const MBTI = {
  sentinels: [
    'ESFJ',
    'ISFJ',
    'ESTJ',
    'ISTJ',
  ],
  artisans: [
    'ESFP',
    'ISFP',
    'ESTP',
    'ISTP',
  ],
  champions: [
    'ENFP',
    'INFP',
    'ENFJ',
    'INFJ',
  ],
  rationals: [
    'ENTP',
    'INTP',
    'ENTJ',
    'INTJ',
  ],
}

class Game extends Component {
  constructor(props) {
    super(props)

    this.state = {
      figureIndex: null,
      currentFigureName: 'Mr T',
      currentFigureDescription: 'Star of the A Team!',
      currentFigureImageUrl: 'https://media.gettyimages.com/photos/mr-t-at-the-19th-annual-academy-of-country-music-awards-knotts-berry-picture-id141323790?s=612x612',
      currentFigureImage: null,
      showTitle: 'the A team',
    }
  }

  componentDidMount() {
    const worldId = this.props.match.params.worldId
    this.props.loadFigures(worldId)
    this.initBackgroundCheck()
    this.setState({
      figureIndex: 0,
    })
  }
  componentWillReceiveProps(newProps) {
    console.log("NEW PROPS!")
    console.log(newProps)
    const worldId = this.props.match.params.worldId
    const newWorldId = newProps.match.params.worldId
    if (newWorldId && newWorldId !== worldId) {
      this.props.loadFigures(newWorldId)
    }
  }
  componentDidUpdate(prevProps, prevState){
    console.log("COMPONENT UPDATE")
    console.log(this.props)
    console.log(this.state)
    // figure changed or new figures
    if (
      prevState.figureIndex !== this.state.figureIndex ||
      prevProps.figures !== this.props.figures
    ) {
      let currentFigure = {...this.props.figures[this.state.figureIndex]}
      this.setState({
        currentFigureName: currentFigure.name,
        currentFigureDescription: currentFigure.description,
        currentFigureImageUrl: currentFigure.image,
        // wtf is showTitle
      })
    }

    // imageUrl has changed
    if (prevState.currentFigureImageUrl !== this.state.currentFigureImageUrl) {
      Promise.resolve()
        .then(() => {
          if (/https?:\/\//.test(this.state.currentFigureImageUrl)) {
            return this.state.currentFigureImageUrl
          }
          else {
            // returns the imported img
            return import(`images/${this.state.currentFigureImageUrl}`)
          }
        })
        .then(img => {
          // set the img to background
          this.setState({
            currentFigureImage: img
          })
        })
    }

    // image itself has changed
    if (prevState.currentFigureImage !== this.state.currentFigureImage) {
      // check for new image BG color
      BackgroundCheck.refresh()
    }
  }

  initBackgroundCheck() {
    BackgroundCheck.init({
      targets: '.mbti-btn, .figure-name, .figure-description, .slideout-menu',
      images: '.game'
    });
  }

  render() {
    console.log("GAME!")
    console.log(this.state.currentFigureName)

    return (
      <div className="game"
        style={{
          'backgroundImage': `url(${this.state.currentFigureImage})`,
          'backgroundSize': 'cover',
          'backgroundRepeat': 'no-repeat',
          'backgroundPosition': 'center',
        }}
      >
        <div className="game-shade">
        </div>
        <div
          className="cover-photo"
        >
          <div className="figure">
            <div className="figure-name">
              <h1>
                { this.state.currentFigureName }
              </h1>
            </div>
            <div className="figure-description">
              <h1>
                { this.state.currentFigureDescription }
              </h1>
            </div>
          </div>
        </div>

        <div
          className="mbti-buttons"
          style={{
            'zIndex': 10,
            'position': 'absolute',
            'top': '75vh',
            'width': '100%',

            'display': 'flex',
            'flexFlow': 'row wrap',
            'justifyContent': 'center',
            'alignItems': 'center',
          }}
        >
          {
            Object.keys(MBTI).map(grp => (
              <div
                className="buttonColumn"
                style={{
                  width: '25%',
                  display: 'flex',
                  flexFlow: 'column nowrap',
                  justifyContent: 'center',
                  alignItems: 'center',
                  margin: '0 auto',
                }}
              >
                <div
                  className="buttonColumnTitle"
                  style={{
                    display: 'flex',
                    justifyContent: 'center',
                    width: '100%',
                    margin: '0 auto',
                  }}
                >
                  {grp}
                </div>
                <div
                  style={{
                    'display': 'flex',
                    'flexFlow': 'row wrap',
                    'justifyContent': 'center',
                    'alignItems': 'center',

                    width: '50%',
                    margin: '0 auto',
                  }}
                >
                  {
                    MBTI[grp].map(type => (
                      <button
                        className={`mbtiButton ${grp}`}
                        style={{
                        }}
                      >
                        {type}
                      </button>
                    ))
                  }
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
  Game
)
