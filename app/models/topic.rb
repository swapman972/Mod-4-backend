class Topic < ApplicationRecord
    has_many :comments
    has_many :likes
    belongs_to :user, optional: true
end
