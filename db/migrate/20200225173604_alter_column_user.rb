class AlterColumnUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :role_id, :integer

  end
end
