class ChangeNameDeleteFlag < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :delete_flag, :integer
    remove_column :users, :deleteFlag, :integer
  end
end
