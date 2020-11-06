class GiftSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :store, :person_id, :person
  belongs_to :person
end
