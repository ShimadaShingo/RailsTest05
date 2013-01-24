class Authority < ActiveRecord::Base
  has_many :mst_jinins
  attr_accessible :authority_name
end
