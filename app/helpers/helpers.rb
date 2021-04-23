require 'sinatra/base'
class Helpers

    def self.current_user(session)
    #class methods 
       @user = User.find_by_id(session[:user_id])
       #for session, it's user_id not just id
    end

    def self.is_logged_in?(session)
        !!session[:user_id]
        # double bang !! is a boolean
    end

end