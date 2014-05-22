class Listing < ActiveRecord::Base
	if Rails.env.development?

	else

	has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "missing.jpg",
    								:storage => :dropbox,
    								:path => ":style/:id_:filename",
   									:dropbox_credentials => Rails.root.join("config/dropbox.yml")
   									validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
 										
 	end
end
