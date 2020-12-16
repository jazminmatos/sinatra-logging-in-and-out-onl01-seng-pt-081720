class Helpers
    def self.current_user(session_hash)
        #use user_id from session hash to find the user in the database & return that user
        User.find(session_hash[:user_id])
    end

    def self.is_logged_in?(session_hash)
        #should return true if user_id is in the session hash
        #should return false if not
        #double bang operator - returns boolean

        !!session_hash[:user_id] #shows the boolean value of the statement
    end
end