FactoryBot.define do
  factory(:parent_child_relation, class: "ParentsChildren") do
    association :parent, factory: :user
    association :child, factory: :user
  end
end
