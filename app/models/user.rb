class User < ActiveRecord::Base
  attr_accessible :active, :name, :password_digest
end
