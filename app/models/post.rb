class Post < ApplicationRecord
  #belongs_to :user
  belongs_to :poster, class_name: "User", foreign_key: "userno"
  #validates :poster_id, presence: true
end