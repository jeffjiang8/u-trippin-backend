class User < ApplicationRecord
    has_many :trips

    validates :username, uniqueness: true
    has_secure_password
end
