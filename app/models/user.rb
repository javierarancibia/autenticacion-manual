class User < ApplicationRecord
    def has_secure_password

    end
    validates :email, uniqueness: true

end
