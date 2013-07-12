class MessageMailer < ActionMailer::Base
  default from: "no-reply@wdi5.com"

  def warning_email(user)
    @user = user
    @url = 'https://addons.heroku.com/pusher'
    mail(to: @user.email, subject: 'Pusher is out')
  end

  def suggestions_email(user, message)
    @user = user
    @message = message
    image_url = Rails.root + 'public/face.jpg'
    attachments.inline['face.jpg'] = File.read(image_url)
    mail(to: 'amadden80@gmail.com', subject: @user.email, from: "Suggestions@wdi5.com")
    mail(to: @user.email, subject: @user.email, from: "Suggestions@wdi5.com")
  end

end
