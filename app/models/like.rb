class Like < ApplicationRecord
    belongs_to :user
    belongs_to :topic
    belongs_to :comment, optional: true
end
