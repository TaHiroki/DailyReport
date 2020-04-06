class Like < ApplicationRecord
    validates :user_id,{presence: true}
    validates :report_id,{presence: true}
end
