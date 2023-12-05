# frozen_string_literal: true

module Types
  include Dry.Types()
end

class AuthenticationCommand < Dry::Struct
  include Aux::Pluggable

  register

  # @!attribute [rw] email
  #   @return [String]
  # @!attribute [rw] password
  #   @return [String]
  attribute :email, Types::String
  attribute :password, Types::String
end
