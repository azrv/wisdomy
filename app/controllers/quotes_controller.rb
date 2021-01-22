# frozen_string_literal: true

# Quotes Controller
class QuotesController < ApplicationController
  def index
    quotes = Quote.all

    render json: QuoteSerializer.new(quotes, include: [:author]).serializable_hash
  end
end
