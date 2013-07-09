class HomeController < ApplicationController
  
  before_filter :authenticate_user!, expect: [:create, :show]

  def index
    
  end


end