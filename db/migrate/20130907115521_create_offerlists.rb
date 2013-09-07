class CreateOfferlists < ActiveRecord::Migration
  def change
    create_table :offerlists do |t|
      t.string :buyer
      t.decimal :price
      t.datetime :date
      t.references :product, index: true

      t.timestamps
    end
  end
end
