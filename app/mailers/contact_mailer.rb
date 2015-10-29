class ContactMailer < ApplicationMailer

	default from: "priyanko.dey33@gmail.com"

  def welcome_email(contact)
    @contact = contact
    #attachments["garb.jpg"] = File.read("#{Rails.root}/public/assets/garb.jpg")
    mail(to: @contact.email, subject: 'Welcome to Appreciado')
  end

   def query_mail(contact)
  	@contact=contact
    mail(:to => "priyanko.dey33@gmail.com", :subject => "Getting Quote")
   end

end
