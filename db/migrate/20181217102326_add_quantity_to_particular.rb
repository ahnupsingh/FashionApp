class AddQuantityToParticular < ActiveRecord::Migration[5.2]
  def change
    add_column :particulars, :quantity, :integer
  end
end
