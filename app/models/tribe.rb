class Tribe < ActiveRecord::Base
  # attr_accessor :avatar_file_name
  # has_attached_file :avatar, styles: {
  # thumb: '100x100>',
  # square: '200x200#',
  # medium: '300x300>'
  # }
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_many :tribe_users
  has_many :users, through: :tribe_users

  validates_presence_of :name
  validates_presence_of :story
  validates_presence_of :email
  validates_presence_of :phone

  # has_attached_file :image, default_url: 'missing_image.jpg'
  # validates_attachment :image, content_type: { content_type: ['image/jpg', 'image/jpeg', 'image/png'] },
  #   size: { in: 0..4.megabytes }

  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # This method associates the attribute ":avatar" with a file attachment

  # Validate the attached image is image/jpg, image/png, etc
end
