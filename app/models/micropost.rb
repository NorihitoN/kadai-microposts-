class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 255}
  
  has_many :favorites
  has_many :favo_users, through: :favorites, source: :user
end
