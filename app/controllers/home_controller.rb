class HomeController < ApplicationController
  
  # before_filter :authenticate_user!, expect: [:create, :show]

  def index
  end

  def virtual_haircut
  end

  def sciss

    if params[:x_percnt] && params[:y_percnt]

      Clip.create(x_percentage: params[:x_percnt], y_percentage: params[:y_percnt])

      ele = (((((params[:y_percnt].to_f*12).round)*10) - 130).abs) -40
      azi = 2*(params[:x_percnt].to_f*90).round+90
      puts ele
      sciss = Random.rand(9)+1
      @url = "https://s3.amazonaws.com/VirtualHaircut/sciss_lib/sciss#{sciss}/#{ele}e#{azi}a.wav"
      # @url = "file://localhost/Users/amadden80/Desktop/sciss_lib/sciss#{sciss}/#{ele}e#{azi}a.wav"
      
      @id_name = "sciss_#{sciss}#{ele}#{azi}"
      @ms = 1000

      respond_to do |format|
        format.js {render 'sciss_url'}
        format.html { render nothing: true }
      end
    end

  end


  def suggestions_email
    params[:message] ||= 'Great Work!'
    MessageMailer.suggestions_email(User.last, params[:message]).deliver
    render 'suggestions_clear'
  end


end