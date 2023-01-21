# AllinEvents README

## users 
    Admin and Clients

*   Admin is a special user
*   To signup Admin include allinadmin in the username

*   Admin can create an event
  
*   view current booking and engagements



*  clients don't have to login 
*  They input their details as they book
*  can leave a review
## Models

    Admin 
    Engagement
    Review
    Event
    Booking

# validations 

## Admin
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true    
    validates :password, length: {within: 4..10}

    validate :must_have_allin_admin

## Bookings
    validates :fullname, :email, :phonenumber, :eventname, :eventdate, presence: true
    validates :email, presence: true, uniqueness: true
    





