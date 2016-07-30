class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :featured, default: false

      t.timestamps null: false
    end
    add_column :posts, :category_id, :integer
  end
end
