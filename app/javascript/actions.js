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
export const loadFigures = (mythosId=null) => {
  return (dispatch) => {
    console.log("FETCHING FIGURES!: ", mythosId)
      axios.get(
        mythosId
        ?
         `/api/v1/figures/${mythosId}`
        :
         `/api/v1/figures`
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
     }).catch(err => {
       console.log("ERROR LOADING FIGURES!")
       console.log(err)
     })
  }
}

export const LOAD_MYTHOI = 'LOAD_MYTHOI'
export const loadMythoiSuccess = mythoi => {
  return {
    type: LOAD_MYTHOI,
    payload: {
      items: mythoi,
    }
  }
}
export const loadMythoi = mythoi => {
  return dispatch => {
    console.log("FETCHING MYTHOI!")
    axios.get(
      '/api/v1/mythoi'
    ).then(res => {
      console.log("SUCCESS LOADING MYTHOI!")
      console.log(res)
      return res
    }).then(res => {
      return res.data
    }).then(json => {
      return dispatch(
        loadMythoiSuccess(json)
      )
    }).catch(err => {
      console.log("ERROR LOADING MYTHOI!")
      console.log(err)
    })
  }
}

