class Contact < ActiveRecord::Base
	has_and_belongs_to_many :media
	has_and_belongs_to_many :contenttypes
	
  	
end
