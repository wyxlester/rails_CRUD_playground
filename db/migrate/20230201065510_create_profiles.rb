class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
