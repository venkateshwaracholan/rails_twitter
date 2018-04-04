class Micropost < ApplicationRecord
  #belongs_to :user
  belongs_to :user, class_name: "User"
  validates :user_id, presence: true
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :content, presence: true, length: { maximum: 140 }
  validate  :picture_size

  # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end