class Document < ActiveRecord::Base
  has_attached_file :file, :path => ":rails_root/storage/:rails_env/attachments/:id/:style/:basename.:extension"
  rails_admin do

  end
end
