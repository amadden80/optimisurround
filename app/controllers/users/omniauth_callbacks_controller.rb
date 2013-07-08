class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
      p request.env['omniauth.auth']
  end
end