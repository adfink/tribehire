class AddColumnsToTribeUsers < ActiveRecord::Migration
  def change
    add_column :tribe_users, :name, :string
    add_column :tribe_users, :description, :text
  end
end
