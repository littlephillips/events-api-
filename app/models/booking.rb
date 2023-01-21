class Booking < ApplicationRecord
    
    has_many :reviews 

    validates :fullname, :email, :phonenumber, :eventname, :eventdate, presence: true
    validates :email, presence: true, uniqueness: true
end


