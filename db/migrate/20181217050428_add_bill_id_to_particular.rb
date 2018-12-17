class AddBillIdToParticular < ActiveRecord::Migration[5.2]
  def change
    add_column :particulars, :bill_id, :integer
  end
end
