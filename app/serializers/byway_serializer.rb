# frozen_string_literal: true

class BywaySerializer
  include JSONAPI::Serializer
  attributes :id,
             :route_type,
             :route_name,
             :image_path,
             :website1,
             :us_state,
             :website2_state,
             :website2,
             :miles,
             :trip_info,
             :start,
             :finish
end
