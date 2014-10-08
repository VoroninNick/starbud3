# -*- encoding : utf-8 -*-
class UserMailer < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def new_message(message)
    @message = message
    to = []
    FeedbackEmail.all.each do | r |
      to.push(r.email)
    end
    #default to: to
    mail(:subject => "New message from your website!", to: to)
  end
end
