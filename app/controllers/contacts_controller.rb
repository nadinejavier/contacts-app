
class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def show
    @contact = Contact.find(params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @contact = Contact.create(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      phone_number: params[:phone_number]
      )
    render "create.html.erb"
  end

  def edit
    @contact = Contact.find(params[:id])
    render "edit.html.erb"
  end
  
  def update
    contact = Contact.find(params[:id])
    @contact = contact.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number])
    render "update.html.erb"
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    render "destroy.html.erb"
  end
  
end
