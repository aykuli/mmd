class CreateEntities < ActiveRecord::Migration[7.1]
  def change
    create_enum :gender_enum, [:female, :male]
    create_table :users do |t|
      t.string :password_digest
      t.string :email
      t.string :first_name
      t.string :last_name
      t.enum :gender, enum_type: :gender_enum, default: :female
      t.integer :parent_id, default: nil

      t.timestamps
    end

    create_enum :entity_gender_enum, [:female, :male, :both]
    create_table :entities do |t|
      t.string :title, null: false
      t.string :alias
      t.string :code, null: false
      t.decimal :max, null: false
      t.decimal :min, null: false
      t.string :unit, null: false
      t.text :description
      t.enum :gender, enum_type: :entity_gender_enum, default: :both

      t.timestamps
    end

    add_index :entities, [:code, :gender], unique: true, name: :entity_code_gender_idx
    add_check_constraint :entities, "max > min", name: :entity_max_min_check


    create_join_table :entities, :users do |t|
      t.index :entity_id
      t.index :user_id
    end

    create_enum :measurement_warnings, ["HIGH", "LOW"]
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
