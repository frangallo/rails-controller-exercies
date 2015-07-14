class ContactsController < ApplicationController
  def index
    @contacts = Contact.find[params[:user_id]].contacts
    render json: @contacts
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render json: @contact
    else
      render(json: @contact.errors.full_messages, status: :unprocessable_entity)
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy!
    render json: @contact
  end

  def show
    @contact = Contact.find(params[:id])
    render json: @contact
  end

  def update
    if @contact.update(contact_params)
      render json: @contact
    else
      render(json: @contact.errors.full_messages, status: :unprocessable_entity)
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :user_id)
  end
end
