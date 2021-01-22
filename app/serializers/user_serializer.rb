# frozen_string_literal: true

# User Serializer
class UserSerializer
  include Concerns::Serializable

  attributes :email
end
