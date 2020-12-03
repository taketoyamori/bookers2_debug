class Relationship < ApplicationRecord
    belongs_to :following, class_name: "User" # folloing_id
    belongs_to :follower, class_name: "User" # follower_id
end
