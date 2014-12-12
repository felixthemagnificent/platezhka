class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :paymenttype_id
      t.date :start_date
      t.date :end_date
      t.integer :amount
      t.references :user

      t.timestamps
    end
  end
end
