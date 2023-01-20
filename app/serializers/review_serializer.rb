class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :email, :review, :event_id, :booking_id
end
