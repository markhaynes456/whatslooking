class Comment < ActiveRecord::Base
  
  belongs_to :advert

  validates :name, :presence => true
  validates :message, :presence => true
  validates :advert_id, :presence => true 


end
