/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// global webpack req
import 'babel-polyfill';

import ReactOnRails from 'react-on-rails';
import Root from '../containers/Root';

ReactOnRails.register({
  Root,
});

import store from '../store.js';

ReactOnRails.registerStore({
  store,
});

import axios from 'axios';
axios.defaults.headers.common['X-CSRF-TOKEN'] = ReactOnRails.authenticityToken();
axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
