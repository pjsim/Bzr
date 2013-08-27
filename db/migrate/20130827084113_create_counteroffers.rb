class CreateCounteroffers < ActiveRecord::Migration
  def change
    create_table :counteroffers do |t|
      t.references :offer, index: true
      t.string :buyer
      t.string :seller
      t.string :buyer_price
      t.string :seller_price

      t.timestamps
    end
  end
end
