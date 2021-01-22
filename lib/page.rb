# frozen_string_literal: true

# Applies page[:number] page[:size] to given scope
class Page
  def initialize(scope, params)
    @scope = scope
    @params = params
  end

  def create
    @scope.page(page).per(size)
  end

  private

  def page
    @params.dig(:page, :number)
  end

  def size
    @params.dig(:page, :size)
  end
end
