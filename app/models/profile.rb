class Profile < ActiveRecord::Base
  attr_accessible :age, :email, :extra, :firstName, :gender, :lastName
end
