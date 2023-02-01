class CreateTestimonials < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonials do |t|
      t.text :content
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
