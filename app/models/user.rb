class User < ApplicationRecord
    belongs_to :group, optional: true
    has_many :topics
    has_many :comments
    has_many :likes
end
