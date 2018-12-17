class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :employees, :type, :emp_type
  end
end
