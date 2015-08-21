class CreateUsernames < ActiveRecord::Migration
  def change
    create_table :usernames do |t|
      t.string :email
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :usernames, :users
  end
end
