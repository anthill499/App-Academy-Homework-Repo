class Person < ApplicationRecord
    validates :name, presence: true
    validates :house_id, presence: true, uniqueness: true
    
    belongs_to (:house1,
        primary_key: :id,
        foreign_key: :resident_id,
        class_name: "House"
    )
end