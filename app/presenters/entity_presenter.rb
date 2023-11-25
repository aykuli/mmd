# frozen_string_literal: true

class EntityPresenter
  include Aux::Pluggable

  register

  def self.call(entity)
    {
      id: entity.id,
      code: entity.code,
      title: entity.title,
      alias: entity.alias,
      max: entity.max,
      min: entity.min,
      unit: entity.unit,
      description: entity.description,
      gender: entity.gender,
      group_id: entity.group_id
    }
  end
end
