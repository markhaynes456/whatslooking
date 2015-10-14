class ContactsController < ApplicationController

  before_action :logged_in?, only:[:index] 

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to :new_contact, notice: 'Advert was successfully created.' }
        format.json { render :show, status: :created, location: :adverts }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    set_contact.destroy
    redirect_to :root, :notice => "Contact Destroyed!"
  end

  def set_contact
    @contact = Contact.find(params['id'])
  end

  def contact_params
    params.require(:contact).permit(:email, :name, :message)
  end
end
