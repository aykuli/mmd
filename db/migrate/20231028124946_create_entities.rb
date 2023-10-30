class CreateEntities < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :parent_id, default: nil

      t.timestamps
    end

    create_enum :gender_enum, [:female, :male]
    create_table :entities do |t|
      t.string :title
      t.string :code
      t.integer :max
      t.integer :min
      t.integer :user_id, default: nil
      t.enum :gender, enum_type: :gender_enum, default: :female

      t.timestamps
    end

    add_index :entities, [:code, :gender], unique: true, name: :entity_code_gender_idx
    add_check_constraint :entities, "max > min", name: :entity_max_min_check

    create_enum :measurement_warnings, ["HIGH", "LOW"]
    create_table :measurements do |t|
      t.integer :entity_id
      t.date :measured_at
      t.integer :value
      t.enum :warning, enum_type: :measurement_warnings, default: nil

      t.timestamps
    end
  end
end
