class User < ApplicationRecord
    validates :username, :password, presence :true
    validates :username, :password, uniqueness :true

    
end
