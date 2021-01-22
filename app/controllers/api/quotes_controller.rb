# frozen_string_literal: true

module Api
  # Quotes Api Controller
  class QuotesController < BaseController
    def index
      quotes = ::Page.new(Quote.all, params).create

      render_json QuoteSerializer.new(quotes, include: [:author])
    end
  end
end
