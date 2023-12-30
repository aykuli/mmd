# frozen_string_literal: true

class EntitiesGroupsRepository
  include Aux::Pluggable

  register initialize: true, memoize: true

  # @!method all
  #   @return [ActiveRecord::Relation<EntityGroup>]
  delegate :all, to: :model

  private

  # @return [Class<EntityGroup>]
  def model = EntityGroup
end
