class Like < ApplicationRecord
    belongs_to :user
    belongs_to :topic, optional: true
    belongs_to :comment, optional: true
end
