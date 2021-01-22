# frozen_string_literal: true

module Concerns
  # Serializable Object
  module Serializable
    extend ActiveSupport::Concern

    included do
      include JSONAPI::Serializer
    end
  end
end
