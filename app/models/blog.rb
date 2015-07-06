class Blog < ActiveRecord::Base
  attr_accessible :desc, :title, :user_id
  belongs_to :user
end
