class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :style, null: true
      t.references :user
      t.string :custom_style, null: true
      t.string :description, null: true
      t.string :process_desc
      t.string :visibility_level
      t.timestamps
    end
  end
end
