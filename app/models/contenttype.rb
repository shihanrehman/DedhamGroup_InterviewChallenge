class Contenttype < ActiveRecord::Base
has_and_belongs_to_many :contacts, dependent: :destroy
end
