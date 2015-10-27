class Advert < ActiveRecord::Base

  has_many :comments
  has_attached_file :image, styles:{medium:"200x200",thumb:"100x100"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :email, :presence => true
  validates :title, :presence => true
  validates :category, :presence => true
  validates :body, :presence => true 

  CATEGORIES = {"Vehicles"=>"Vehicles","For Sale"=>"For Sale","Property"=>"Property","Jobs"=>"Jobs","Services"=>"Services","Community"=>"Community","Pets"=>"Pets"}

  def categories
    CATEGORIES
  end

end
