require 'rails_helper'

require 'capybara/rspec'
require 'capybara/rails'
require 'capybara-screenshot/rspec'

Capybara.javascript_driver = :webkit
Capybara::Screenshot.autosave_on_failure = true