class UserAuthenticatedForRoom < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates_presence_of :user, :room

  def self.authenticate_access(room, user, password)
    if room.password == password
      UserAuthenticatedForRoom.create(user_id: user.id, room_id: room.id)
      return true
    else
      return false
    end
  end

  def self.can_be_accessed_by(room, user)
    return User.where(id: user.id).joins(user_authenticated_for_rooms: :room).where('rooms.id = ?', room.id).count > 0
  end
end
