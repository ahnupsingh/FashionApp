class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :type
      t.string :address
      t.string :contact

      t.timestamps
    end
  end
end
