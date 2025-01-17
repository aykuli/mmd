# frozen_string_literal: true

class EntitiesRepository
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!method where(attributes)
  #   @param attributes [Hash]
  #   @return [ActiveRecord::Relation<Entity>]
  # @!method find_by(attributes)
  #   @param attributes [Hash]
  #   @return [ActiveRecord::Relation<Entity>]
  delegate :where, :create, :find_by, to: :model

  private

  # @return [Class<Entity>]
  def model = Entity
end
