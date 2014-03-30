class User < ActiveRecord::Base
  attr_accessible :msg, :num, :username
end
