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
      figureIndex: 0,
      figures: [],
      currentFigure: {
        name: 'Mr T',
        imageUrl: 'https://media.gettyimages.com/photos/mr-t-at-the-19th-annual-academy-of-country-music-awards-knotts-berry-picture-id141323790?s=612x612',
        showTitle: 'the A team',
        description: 'Star of the A Team!',
      },
    }
  }

  componentDidMount() {
    this.props.loadFigures()
    this.initBackgroundCheck()
  }
  componentWillReceiveProps(props) {
    console.log("NEW PROPS!")
    console.log(props)
  }
  componentDidUpdate(){
    console.log("REFRESHING!")
    BackgroundCheck.refresh()
  }

  initBackgroundCheck() {
    BackgroundCheck.init({
      targets: '.mbti-btn, .figure-name, .figure-description, .slideout-menu',
      images: '.game'
    });
  }

  render() {
    console.log("GAME!")
    let figure = this.props.figures[this.state.figureIndex] || {}
    console.log(figure)
    console.log("STYLES")
    console.log(styles)

    return (
      <div className="game"
        style={{
          'backgroundImage': `url(${figure.image})`,
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
                { figure.name }
              </h1>
            </div>
            <div className="figure-description">
              <h1>
                { figure.description }
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
                  style={{
                    color: 'white',
                    display: 'flex',
                    justifyContent: 'center',
                    width: '100%',
                    margin: '0 auto',
                  }}
                >
                  {grp.toUpperCase()}
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
    loadFigures: () => dispatch(loadFigures()),
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(
  Game
)
