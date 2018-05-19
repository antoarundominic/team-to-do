class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :domain
      t.integer :licenses_used
      t.integer :total_licenses
      t.timestamps
    end
  end
end
