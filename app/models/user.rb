class User < ApplicationRecord
    has_secure_password
    #added
    validates :email, :uniqueness => true, :presence => true
end
