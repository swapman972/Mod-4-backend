class Comment < ApplicationRecord
    has_many :likes, dependent: :destroy
    belongs_to :topic
    belongs_to :user
    belongs_to :group
end
