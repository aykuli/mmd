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

    create_table :entities do |t|
      t.string :title
      t.string :code
      t.integer :max
      t.integer :min
      t.integer :user_id

      t.timestamps
    end

    create_enum :measurement_warnings, ["HIGH", "LOW"]
    create_table :measurements do |t|
      t.integer :entity_id
      t.integer :value
      t.enum :warning, enum_type: :measurement_warnings, default: nil

      t.timestamps
    end
  end
end
