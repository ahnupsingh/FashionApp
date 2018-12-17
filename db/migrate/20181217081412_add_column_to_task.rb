class AddColumnToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :employee_id, :integer
  end
end
