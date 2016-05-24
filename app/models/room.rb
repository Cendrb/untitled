class Room < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :user_authenticated_for_rooms, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
