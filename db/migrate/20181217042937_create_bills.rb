class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.integer :bill_no
      t.integer :quantity
      t.integer :total
      t.integer :advance
      t.integer :grand_total
      t.boolean :is_complete

      t.timestamps
    end
  end
end
