class IngredientsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      
      t.string :name
      t.string :category 
      t.references :user
      
      t.timestamps
    end
  end
end
