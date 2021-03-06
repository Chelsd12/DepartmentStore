class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.float :price
      t.belongs_to :grocery, foreign_key: true

      t.timestamps
    end
  end
end
