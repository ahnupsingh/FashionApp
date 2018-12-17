class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.date :date
      t.integer :bill_no
      t.string :task_particular
      t.integer :quantity
      t.integer :total

      t.timestamps
    end
  end
end
