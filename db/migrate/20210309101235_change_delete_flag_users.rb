class ChangeDeleteFlagUsers < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :delete_flag, :boolean, default: false
  end

  def down
    change_column :users, :delete_flag, :boolean
  end
end
