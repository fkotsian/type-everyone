import React, {Component} from 'react'
import ReactDOM from 'react-dom'
import {connect} from 'react-redux'
import {
  loadFigures
} from '../../actions'

const MBTI = {
  sentinels: [
    'ISFJ',
    'ISTJ',
    'ESFJ',
    'ESTJ',
  ],
  artisans: [
    'ISTP',
    'ISFP',
    'ESTP',
    'ESFP',
  ],
  champions: [
    'INFP',
    'INFJ',
    'ENFP',
    'ENFJ',
  ],
  rationals: [
    'INTP',
    'INTJ',
    'ENTP',
    'ENTJ',
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
  }

  componentWillReceiveProps(props) {
    console.log("NEW PROPS!")
    console.log(props)
  }

  render() {
    console.log("GAME!")
    let figure = this.props.figures[this.state.figureIndex] || {}
    console.log(figure)

    return (
      <div>
        Game!
        <div
          className="cover-photo"
          style={{
            'backgroundImage': `url(${figure.image})`,
            'backgroundSize': 'cover',
            'backgroundRepeat': 'no-repeat',
            'backgroundPosition': 'center',

            'position': 'absolute',
            'overflow': 'hidden',
            'top': '0%',
            'bottom': '0px',
            width: '100%',
            color: 'white',
          }}
        >
          <h1>
            { figure.name }
          </h1>
          <h2>
            { figure.description }
          </h2>
        </div>

        <div
          className="mbti-buttons"
          style={{
            'zIndex': 10,
            'position': 'absolute',
            'top': '80%',
            'width': '100%',

            'display': 'flex',
            'flexFlow': 'row wrap',
            'justifyContent': 'space-around',
            'alignItems': 'center',
          }}
        >
          {
            Object.keys(MBTI).map(grp => (
              <div
                style={{
                  'display': 'flex',
                  'flexFlow': 'row wrap',
                  'width': '20%',
                }}
              >
                <div
                  style={{
                    color: 'white',
                  }}
                >
                  {grp}
                </div>
                <div>
                  {
                    MBTI[grp].map(type => (
                      <button
                        style={{
                          'display': 'flex',
                          'flex': 1,
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
