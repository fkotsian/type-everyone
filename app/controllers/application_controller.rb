class ApplicationController < ActionController::Base
  include ReactOnRails::Controller

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  after_action do
    Rails.logger.error "*"*100
    Rails.logger.error "PARAMS"
    Rails.logger.error params
    Rails.logger.error "*"*100
  end
end
