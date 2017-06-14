class ContactsController < ApplicationController

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      ContactMailer.new_submission_email(@contact).deliver
      ContactMailer.thank_you_email(@contact).deliver
      redirect_to root_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end


end
