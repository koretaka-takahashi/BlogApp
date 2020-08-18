class Blog < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 1500 }
  belongs_to :user
end
