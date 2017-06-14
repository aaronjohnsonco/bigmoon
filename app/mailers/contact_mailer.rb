class ContactMailer < ApplicationMailer

  def thank_you_email(contact)
    @contact = contact
    mail(to: contact.email, from: 'aaronjohnsonis@gmail.com', subject: 'Thanks for contacting Big Moon')
  end

  def new_submission_email(contact)
    @contact = contact
    mail(from: contact.email, to: 'aaronjohnsonis@gmail.com', subject: 'New Contact Form Submission')
  end

end
