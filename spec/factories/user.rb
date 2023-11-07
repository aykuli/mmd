FactoryBot.define do
  factory(:user, class: 'User') do
    transient { password { FFaker::Internet.password } }

    first_name { FFaker::NameRU.first_name }
    last_name { FFaker::NameRU.last_name }
  end

  trait(:child) do
    parent = create(:user)

    after(:create) do |child|
      child.parent_id = parent.id
      create(:parent_child_relation, parent:, child:)
    end
  end
end
