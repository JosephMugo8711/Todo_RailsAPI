class Todo < ApplicationRecord

    validates :name, presence: true
    validates :description, presence: true, length: {maximum: 50, minimum: 5}
end
