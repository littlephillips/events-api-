class Admin < ApplicationRecord
    has_secure_password
    has_many :events

    validates : username, presence: true
    validates :email, uniqueness: true
    validates :password, length: {within: 4..10}

    validates :must_have_allin_admin

    def must_have_allin_admin
        unless username.match?(/allinadmin/)
            errors.add(:username, "Must include allinadmin")
        end
    end



end
