class User < ActiveRecord::Base
  belongs_to :person_id, polymorphic: true
end
