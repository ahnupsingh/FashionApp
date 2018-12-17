class RemoveQuantityFromBill < ActiveRecord::Migration[5.2]
  def change
    remove_column :bills, :quantity, :integer
  end
end
