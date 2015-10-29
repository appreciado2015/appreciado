class ContactMailer < ApplicationMailer

	default from: "david@appreciado.com"

  def welcome_email(contact)
    @contact = contact
    #attachments["garb.jpg"] = File.read("#{Rails.root}/public/assets/garb.jpg")
    mail(to: @contact.email, subject: 'Welcome to Appreciado')
  end

   def query_mail(contact)
  	@contact=contact
    mail(:to => "david@appreciado.com", :subject => "Getting Quote")
   end

end
