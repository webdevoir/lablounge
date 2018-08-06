class MessageMailer < ApplicationMailer
  def contact(message)
    @message = message
    mail to: 'noone@example.com', subject: 'You have received a message from lablounge.com'
  end
end
