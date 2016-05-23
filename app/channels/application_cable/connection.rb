module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user_cable

    def connect
      if (fucking_user = find_verified_user)
        self.current_user_cable = fucking_user
      else
        reject_unauthorized_connection
      end
    end

    protected
    def find_verified_user
      if loaded_user = User.find_by_id(cookies.signed[:user_id])
        return loaded_user
      else
        if (loaded_user = User.authenticate(cookies[:email], cookies[:password]))
          return loaded_user
        else
          return nil
        end
      end
    end
  end
end