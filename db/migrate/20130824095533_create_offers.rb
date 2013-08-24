class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :product, index: true
      t.string :buyer
      t.string :seller
      t.decimal :buyer_price
      t.decimal :seller_price

      t.timestamps
    end
  end
end
