
class Admin < ApplicationRecord
    has_secure_password

    validates :username, presence: true
    validates :email, presence: true, uniqueness: true    
    validates :password, length: {within: 4..10}

    validate :must_have_allin_admin

    def must_have_allin_admin
        unless username.match?(/allinadmin/)
            errors.add(:username, " MUST include allinadmin")
        end
    end

    has_many :events 
    has_many :bookings, through: :events
end
