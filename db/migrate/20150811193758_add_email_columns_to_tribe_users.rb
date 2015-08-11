class AddEmailColumnsToTribeUsers < ActiveRecord::Migration
  def change
    add_column :tribe_users, :email, :string
  end
end
