class CreateTribeUsers < ActiveRecord::Migration
  def change
    create_table :tribe_users do |t|
      t.references :tribe, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
