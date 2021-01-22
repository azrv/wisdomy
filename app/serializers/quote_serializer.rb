# frozen_string_literal: true

# Quote Serializer
class QuoteSerializer
  include JSONAPI::Serializer

  attributes :text

  belongs_to :author
end
