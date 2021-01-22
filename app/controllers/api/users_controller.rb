# frozen_string_literal: true

module Api
  # Users Controller
  class UsersController < BaseController
    def index
      render_json UserSerializer.new(users)
    end

    def create
      user = User.create!(user_params)

      render_json UserSerializer.new(user)
    end

    def show
      render_json UserSerializer.new(user)
    end

    def update
      user.update!(user_params)

      render_json UserSerializer.new(user)
    end

    private

    def user_params
      jsonapi_deserialize(params)
    end

    def user
      @user ||= User.find(params[:id])
    end

    def users
      Paginatable.new(User.all, params)
    end
  end
end
