class CreateCreations < ActiveRecord::Migration[7.0]
  def change
    create_table :creations do |t|
      t.string :artist
      t.string :title
      t.string :type_of_work
      t.string :medium
      t.string :dimensions
      t.string :date_of_composition
      t.string :art_category
      t.text :comment
      t.decimal :price

      t.timestamps
    end
  end
end
