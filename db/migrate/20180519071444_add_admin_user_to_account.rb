class AddAdminUserToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :admin_user, :integer
  end
end
