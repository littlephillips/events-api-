class EventSerializer < ActiveModel::Serializer
  attributes :id, :eventname, :description, :services, :image_url, :admin_id
end
