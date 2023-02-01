class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.integer :year, null: false
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
