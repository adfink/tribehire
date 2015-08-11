class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :link
      t.text :description

      t.timestamps null: false
    end
  end
end
