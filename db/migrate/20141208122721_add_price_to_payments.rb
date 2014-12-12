class AddPriceToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :price, :float
  end
end
