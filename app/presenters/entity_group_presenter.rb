# frozen_string_literal: true

class EntityGroupPresenter
  include Aux::Pluggable

  register

  class << self
    # @param group [EntityGroup]
    # @return [Hash]
    def call(group)
      {
        id: group.id,
        code: group.code,
        title: group.title
      }
    end
  end
end
