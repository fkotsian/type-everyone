import axios from 'axios'

/**
 * FIGURES
 */
export const LOAD_FIGURES = 'LOAD_FIGURES'
export const loadFiguresSuccess = (figures) => {
  return {
    type: LOAD_FIGURES,
    payload: {
      items: figures,
    }
  }
}
export const loadFigures = () => {
  return (dispatch) => {
     axios.get(
       '/figures'
     ).then(res => {
       console.log("FETCHED FIGURES!")
       console.log(res)
       // maybe turn off some spinner here
       return res
     }).then(res => {
       return res.data
     }).then(json => {
       return dispatch(
         loadFiguresSuccess(json)
       )
     })
  }
}


