class ContactsController < ApplicationController

	def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        
         ContactMailer.welcome_email(@contact).deliver
         ContactMailer.query_mail(@contact).deliver

        format.html { redirect_to :back }
        #flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
        format.json { render action: 'show', status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
     def contact_params
      params.require(:contact).permit(:name, :email, :phone, :message)
    end

end
