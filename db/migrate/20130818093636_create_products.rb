class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.boolean :sold

      t.timestamps
    end
  end
end
