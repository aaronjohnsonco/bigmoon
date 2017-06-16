class ContactsController < ApplicationController

  def create
    @contact = Contact.create(contact_params)
    if verify_recaptcha(@contact) && @contact.save
      ContactMailer.new_submission_email(@contact).deliver
      ContactMailer.thank_you_email(@contact).deliver
      redirect_to root_path
      flash[:notice] = "Your message has been sent."
    else
      redirect_to root_path
      flash[:notice] = "Your email did not go through, please try again."
    end
    
    # if @contact.save
    #   ContactMailer.new_submission_email(@contact).deliver
    #   ContactMailer.thank_you_email(@contact).deliver
    #   redirect_to root_path
    # end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end


end
