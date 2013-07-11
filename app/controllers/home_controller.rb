class HomeController < ApplicationController
  
  # before_filter :authenticate_user!, expect: [:create, :show]

  def index


    
  end


  def sciss_url
    
    if params[:y_pos] && params[:x_pos] && params[:sciss]
      @url = "https://s3.amazonaws.com/VirtualHaircut/sciss_lib/sciss#{sciss}/#{ele}e#{azi}a.wav"
      @id_name = "sciss_#{sciss}#{ele}#{azi}"
      @ms = 25000

    respond_to do |format|
      format.js 
      format.html { render nothing: true }
    end

  end

  end
  

end