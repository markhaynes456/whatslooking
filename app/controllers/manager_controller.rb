class ManagerController < ApplicationController

  before_action :logged_in?, only:[:index] 

  def index
    @adverts = Advert.all
    @comments = Comment.all
    @contacts = Contact.all
  end

end
