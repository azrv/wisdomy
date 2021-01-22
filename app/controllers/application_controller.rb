# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  before_action :authenticate

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |user, password|
      user == ENV['WISDOMY_LOGIN'] && password == ENV['WISDOMY_PASSWORD']
    end
  end
end
