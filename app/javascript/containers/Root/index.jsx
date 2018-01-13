import React from 'react'
import ReactOnRails from 'react-on-rails'
import {Provider} from 'react-redux'
import {BrowserRouter as Router} from 'react-router-dom'
import App from 'containers/App'

const Root = (props) => {
  const store = ReactOnRails.getStore('store');

  return (
    <Provider
      store={store}
    >
      <Router>
        <App />
      </Router>
    </Provider>
  )
}

export default Root
