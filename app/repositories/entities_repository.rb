# frozen_string_literal: true

class EntitiesRepository
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!method where(attributes)
  #   @param attributes [Hash]
  #   @return [ActiveRecord::Relation<User>]
  # @!method find_by(attributes)
  #   @param attributes [Hash]
  #   @return [User, nil]
  # @!method find(id)
  #   @param id [Integer]
  #   @raise [ActiveRecord::RecordNotFound]
  #   @return [User]
  # @!method create!(attributes)
  #   @param attributes [Hash]
  #   @return [User]
  delegate :where, :find_by, :find, :create!, to: :model

  def filter(**_criteria)
    private
  end

  # @return [Class<User>]
  def model = User
end
