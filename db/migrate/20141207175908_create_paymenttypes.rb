class CreatePaymenttypes < ActiveRecord::Migration
  def change
    create_table :paymenttypes do |t|
      t.string :typename
      t.float :price

      t.timestamps
    end
  end
end
