class Comment < ApplicationRecord
    validates :username, presence:true
    #belongs_to :user
    belongs_to :article
end
