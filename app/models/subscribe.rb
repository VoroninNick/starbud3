class Subscribe < ActiveRecord::Base
  attr_accessible :mail
  rails_admin do
    visible false
  end

end
