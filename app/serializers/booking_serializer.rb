class BookingSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :email, :phonenumber, :eventname, :eventdate
end
