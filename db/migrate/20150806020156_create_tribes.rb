class CreateTribes < ActiveRecord::Migration
  def change
    create_table :tribes do |t|
      t.string :name
      t.text :story
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps null: false
    end
  end
end
