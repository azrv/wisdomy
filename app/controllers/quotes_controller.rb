# frozen_string_literal: true

# Quotes Controller
class QuotesController < ApplicationController
  def index
    quotes = Quote.page(page).per(size)

    render json: QuoteSerializer.new(quotes, include: [:author]).serializable_hash
  end

  private

  def page
    params.dig(:page, :number)
  end

  def size
    params.dig(:page, :size)
  end
end
