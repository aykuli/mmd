# frozen_string_literal: true

class CreateEntities < ActiveRecord::Migration[7.1]
  def up
    create_enum :gender_enum, %i[female male]
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.enum :gender, enum_type: :gender_enum, default: :female
      t.integer :parent_id, default: nil
      t.string :member
      t.boolean :confirmed, default: false, null: false

      t.timestamps
    end

    create_table :parents_children, id: false do |t|
      t.integer :parent_id, null: false
      t.integer :child_id, null: false
    end

    create_table :sessions, id: :uuid do |t|
      t.integer :user_id, null: false

      t.timestamps
    end

    add_foreign_key :sessions, :users, column: :user_id, name: :sessions_user_fkey

    create_table :entity_groups do |t|
      t.string :code
      t.string :title

      t.timestamps
    end

    create_enum :entity_gender_enum, %i[female male both]
    create_table :entities do |t|
      t.string :title, null: false
      t.string :alias
      t.string :code, null: false
      t.decimal :max, null: false
      t.decimal :min, null: false
      t.string :unit, null: false
      t.text :description
      t.integer :group_id, default: nil
      t.enum :gender, enum_type: :entity_gender_enum, default: :both

      t.timestamps
    end

    add_index :entities, %i[code gender], unique: true, name: :entity_code_gender_idx
    add_check_constraint :entities, 'max > min', name: :entity_max_min_check
    add_foreign_key :entities, :entity_groups, column: :group_id, name: :entities_entity_groups_fkey

    create_join_table :entities, :users do |t|
      t.index :entity_id
      t.index :user_id
    end

    add_index :entity_groups, :code, unique: true, name: :entity_groups_code_idx

    create_enum :measurement_warnings, %w[HIGH LOW]
    create_table :measurements do |t|
      t.integer :entity_id
      t.integer :user_id
      t.date :measured_at
      t.decimal :value
      t.enum :warning, enum_type: :measurement_warnings, default: nil

      t.timestamps
    end
  end
end
