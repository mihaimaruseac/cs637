class Address < ActiveRecord::Base
  attr_accessible :city, :profile_id, :state, :street, :zip
end
