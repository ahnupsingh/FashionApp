class CreateParticulars < ActiveRecord::Migration[5.2]
  def change
    create_table :particulars do |t|
      t.string :name
      t.integer :cus_rate
      t.integer :emp_rate
      t.timestamps
    end
  end
end
