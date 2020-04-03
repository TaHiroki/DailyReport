class User < ApplicationRecord


    def post
        return Report.where(user_id: self.id)
    end
end
