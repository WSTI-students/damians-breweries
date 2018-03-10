class CreateStylesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :styles_tables do |t|
      t.string :name
      t.string :description
    end
  end
end
