class Room < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :user_authenticated_for_rooms, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  after_update :invalidate_access_permissions

  def password_protected?
    return self.password != nil && self.password != ''
  end

  protected
  def invalidate_access_permissions
    user_authenticated_for_rooms.destroy_all
  end
end
