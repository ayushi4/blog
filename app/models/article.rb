class Article < ApplicationRecord

    validates :title, presence :true
    validates :title, uniqueness :true
    belongs_to :user
    
    has_many :comment
    
end
