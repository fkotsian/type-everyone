import React from 'react'
import ReactOnRails from 'react-on-rails'
import {Provider} from 'react-redux'
import App from 'containers/App'

const Root = (props) => {
  const store = ReactOnRails.getStore('store');

  return (
    <Provider
      store={store}
    >
      <App />
    </Provider>
  )
}

export default Root
