class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :is_admin
      t.integer :account_id, limit: 8
      t.timestamps
    end
  end
end
