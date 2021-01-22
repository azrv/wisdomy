# frozen_string_literal: true

module Exceptions
  # Base Json Api Exception
  class Base
    def initialize(exception, **params)
      @exception = exception
      @code = params[:code]
    end

    def serializable_hash
      # TODO: get rid of [:data] workaround
      # Wrapping with 'errors' top level key should be done on serializer level
      {
        errors: Array.wrap(errors).map { |error| ErrorSerializer.new(OpenStruct.new(error)).serializable_hash[:data] }
      }
    end

    def errors
      raise NotImplementedError
    end
  end
end
