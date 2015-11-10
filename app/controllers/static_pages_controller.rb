class StaticPagesController < ApplicationController
  def top_benefits
  end

  def top_benefits_connecting    
  end

  def top_benefits_growing    
  end

  def top_benefits_rewarding    
  end

  def about
  end

  def about_team
  end

  def partners
  end

  def contact
  end

  def support
    @contact = Contact.new
  end

  def support_schedule    
  end

  def support_appreciado    
  end

  def support_question    
  end

  def purchase
  end

  def thankyou    
  end

  def privacy    
  end

  def terms    
  end

  def demo
    render :layout => 'demo'
  end
end
