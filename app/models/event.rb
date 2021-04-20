class Event < ApplicationRecord
    belongs_to :User, foreign_key: "user_id", classname: "User"
end
