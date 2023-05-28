class Todo < ApplicationRecord

    validates :name, presence: true
    validates :description, presence: true, length: {maximum: 100, minimum: 5}
end
