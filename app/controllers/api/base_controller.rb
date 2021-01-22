# frozen_string_literal: true

module Api
  # Base Api Controller
  class BaseController < ActionController::Base
    include Knock::Authenticable

    def render_json(serializer_instance)
      render json: serializer_instance.serializable_hash
    end

    # handle invalid JWT token
    def unauthorized_entity(_entity_name)
      render_json Exceptions::NotAuthorized.new({})
    end
  end
end
