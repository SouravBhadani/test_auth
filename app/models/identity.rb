class Identity < ActiveRecord::Base
  attr_accessible :provider, :uid, :user_id
  belongs_to :user
  validates_presence_of :uid, :provider
 

  def self.find_for_oauth(auth)
    find_or_create_by(uid: auth.uid, provider: auth.provider)
  end

end
