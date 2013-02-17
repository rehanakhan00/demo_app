class Micropost < ActiveRecord::Base
  attr_accessible :content, :myuser_id
end
