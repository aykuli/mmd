# frozen_string_literal: true

module Types
  include Dry.Types()
end

class AddUserCommand < Dry::Struct
  include ActiveModel::Validations
  include Aux::Pluggable

  register

  # @!attribute [rw] gender
  #   @return [String]
  # @!attribute [rw] member
  #   @return [String]
  # @!attribute [rw] first_name
  #   @return [String]
  # @!attribute [rw] last_name
  #   @return [String]
  # @!attribute [rw] email
  #   @return [String]
  # @!attribute [rw] birth_date
  #   @return [DateTime]
  attribute :gender,      Types::String
  attribute :member,      Types::String
  attribute :first_name,  Types::String
  attribute :last_name,   Types::String
  attribute :email,       Types::String
  attribute :birth_date,  Types::DateTime

  validates :gender, :first_name, :birth_date, presence: true
end
