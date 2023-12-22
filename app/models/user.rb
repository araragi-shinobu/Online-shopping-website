class User < ApplicationRecord
    has_secure_password
    validates(:userid, :password_digest, presence: true)
end
