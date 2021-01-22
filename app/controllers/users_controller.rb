# frozen_string_literal: true

# UsersController
class UsersController < ApplicationController
  include JSONAPI::Deserialization

  def index
  end

  def show
  end

  def update
  end

  def create
  end

  def user_params
    jsonapi_deserialize(params)
  end
end
