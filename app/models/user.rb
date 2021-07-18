class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, presence: true

  has_many :books
  
  mount_uploader :image, ImageUploader
end
