class UserMailer < ActionMailer::Base
  default from: "do-not-reply@example.com"
  
  def contact_email(contact)
    @contact = contact
    #mail(to: ENV["OWNER_EMAIL"], from: @contact.email, reply_to: @contact.email, :subject => "Website Contact")
    mail(to: ENV["OWNER_EMAIL"], from: ENV["MAIL_USERNAME"], reply_to: @contact.email, :subject => "Website Contact")
  end
end
