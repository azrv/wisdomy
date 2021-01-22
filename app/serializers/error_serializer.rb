# frozen_string_literal: true

# Error Serializer
class ErrorSerializer
  include Concerns::Serializable

  attributes :code, :status, :title, :detail, :meta
end
