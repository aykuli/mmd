# frozen_string_literal: true

module Types
  include Dry.Types()
end

class AuthenticationCommand < Dry::Struct
  include Aux::Pluggable

  register

  # @!attribute [rw] token
  #   @return [String]
  # @!attribute [rw] email
  #   @return [String]
  # @!attribute [rw] password
  #   @return [String]
  attribute :token, Types::String # TODO: looks like useless
  attribute :email, Types::String
  attribute :password, Types::String
end
