class AddColumnToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :fav_color, :string
  end
end
