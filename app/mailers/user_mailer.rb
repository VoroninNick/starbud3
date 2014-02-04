class UserMailer < ActionMailer::Base

  default :from => "nazariy.papizh@gmail.com"
  default :to => "nazariy.papizh@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "#{message.subject}")
  end

end
