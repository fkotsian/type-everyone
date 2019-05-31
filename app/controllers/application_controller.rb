class ApplicationController < ActionController::Base
  include ReactOnRails::Controller

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter do
    Rails.logger.error "*"*100
    Rails.logger.info "PARAMS"
    Rails.logger.info params
    Rails.logger.error "*"*100
  end
end
