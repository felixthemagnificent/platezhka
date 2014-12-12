class AddProcessedToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :processed, :boolean
  end
end
