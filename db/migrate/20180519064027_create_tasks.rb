class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description_text
      t.references :project
      t.references :account
      t.references :user
      t.timestamps
    end
  end
end
