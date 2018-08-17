import {combineReducers} from 'redux'
import {
  LOAD_FIGURES,
  LOAD_MYTHOI,
} from './actions'

const currentUser = function(state={}, action) {
  switch (action.type) {
    default:
      return state
  }
}

const figures = function(state={items: []}, action) {
  switch (action.type) {
    case LOAD_FIGURES:
      return {
        ...state,
        items: Object.assign({}, state.items, action.payload.items),
      }
    default:
      return state
  }
}

const mythoi = function(state={items: []}, action) {
  switch (action.type) {
    case LOAD_MYTHOI:
      return {
        ...state,
        items: Object.assign([], state.items, action.payload.items),
      }
    default:
      return state
  }
}


const TypeEverything = combineReducers({
  currentUser: currentUser,
  figures: figures,
  mythoi: mythoi,
})

export default TypeEverything
