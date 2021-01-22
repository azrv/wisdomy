# frozen_string_literal: true

# Author Serializer
class AuthorSerializer
  include JSONAPI::Serializer

  attributes :name
end

