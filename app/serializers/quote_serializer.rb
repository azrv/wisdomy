# frozen_string_literal: true

# Quote Serializer
class QuoteSerializer
  include Concerns::Serializable

  attributes :text

  belongs_to :author
end
