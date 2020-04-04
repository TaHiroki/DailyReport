class User < ApplicationRecord

    validates :name, {presence: true}
    validates :email, {presence: true, uniqueness: true}
    validates :password, {presence: true}

    def post
        return Report.where(user_id: self.id)
    end
end
