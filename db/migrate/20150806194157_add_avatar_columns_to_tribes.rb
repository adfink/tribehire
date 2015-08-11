class AddAvatarColumnsToTribes < ActiveRecord::Migration
  def change
    add_column :tribes, :avatar_file_name, :string
    add_column :tribes, :avatar_content_type, :string
    add_column :tribes, :avatar_file_size, :string
    add_column :tribes, :avatar_updated_at, :datetime
  end
end
