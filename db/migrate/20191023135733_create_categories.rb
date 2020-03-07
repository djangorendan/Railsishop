class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :ancestry
      t.integer :position
      t.string :image
      t.string :slug

      t.timestamps
    end
    add_index :categories, :ancestry
    add_index :categories, :slug, unique: true
  end
end
