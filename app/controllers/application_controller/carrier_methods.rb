# frozen_string_literal: true

class ApplicationController
  module CarrierMethods
    private

    def failure
      render status: :unprocessable_entity
    end
  end
end
