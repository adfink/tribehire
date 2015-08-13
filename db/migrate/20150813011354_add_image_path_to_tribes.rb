class AddImagePathToTribes < ActiveRecord::Migration
  def change
    add_column :tribes, :image_path, :string
  end
end
