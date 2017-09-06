class ContactsController < ApplicationController
  def index
      @contacts = Contact.all
    end

    def show
      @contact = Contact.find_by(id: params[:id])
    end

    def new
      
    end

    def create
      contact = Contact.new(
                            first_name: params[:first_name], 
                            last_name: params[:last_name], 
                            email: params[:email], 
                            phone_number: params[:phone_number]
                            )
      contact.save
      flash[:success] = "Contact created."
      redirect_to "/contacts/#{contact.id}"
    end

    def edit
      @contact = Contact.find_by(id: params[:id])
    end

    def update
      contact = Contact.find_by(id: params[:id])
      contact.assign_attributes(
                                first_name: params[:first_name], 
                                last_name: params[:last_name], 
                                email: params[:email], 
                                phone_number: params[:phone_number]
                                )
      contact.save
      flash[:success] = "Contact updated."
      redirect_to "/contacts/#{@contact.id}"
    end

    def destroy
      @contact = Contact.find_by(id: params[:id])
      @contact.destroy
      flash[:warning] = "Contact deleted."
      redirect_to "/"
    end
end
