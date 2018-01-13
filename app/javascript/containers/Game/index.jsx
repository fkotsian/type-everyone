import React, {Component} from 'react'
import ReactDOM from 'react-dom'

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
      figures: [],
      currentFigure: {
        name: 'Mr T',
        imageUrl: 'https://media.gettyimages.com/photos/mr-t-at-the-19th-annual-academy-of-country-music-awards-knotts-berry-picture-id141323790?s=612x612',
        showTitle: 'the A team',
        description: 'Star of the A Team!',
      },
    }
  }

  render() {
    console.log("GAME!")
    console.log(this.state.currentFigure)
    return (
      <div>
        Game!
        <div
          className="cover-photo"
          style={{
            'backgroundImage': `url(${this.state.currentFigure.imageUrl})`,
            'backgroundSize': 'cover',
            'backgroundRepeat': 'no-repeat',
            'backgroundPosition': 'center',

            'position': 'absolute',
            'overflow': 'hidden',
            'top': '0%',
            'bottom': '0px',
            width: '100%',
          }}
        >
        </div>

        <div
          className="mbti-buttons"
          style={{
            'zIndex': 10,
            'position': 'absolute',
            'top': '80%',
            'width': '100%',

            'display': 'flex',
            'flex-flow': 'row wrap',
            'justify-content': 'space-around',
            'align-items': 'center',
          }}
        >
          {
            Object.keys(MBTI).map(grp => (
              <div
                style={{
                  'display': 'flex',
                  'flex-flow': 'row wrap',
                  'width': '20%',
                }}
              >
                <div>
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

export default Game
