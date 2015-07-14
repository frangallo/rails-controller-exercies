class ContactSharesController < ApplicationController

  def create
    @contact_shares = ContactShare.new(contact_shares_params)

    if @contact_shares.save
      render json: @contact_shares
    else
      render(json: @contact_shares.errors.full_messages, status: :unprocessable_entity)
    end
  end

  def destroy
    @contact_shares = ContactShare.find(params[:id])
    @contact_shares.delete!
    render json: @contact_shares
  end



  private
    def contact_shares_params
      params.require(:contact_share).permit(:contact_id, :user_id)
    end
end
