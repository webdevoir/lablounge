class HomeController < ApplicationController
  def homepage
    @about = About.last
    @images = Image.all
    @services = Service.all
    @message = Message.new
  end

  def send_message
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      redirect_to root_path(anchor: 'contact')
      flash[:notice] = "We have received your message and will be in touch soon!"
    else
      flash[:notice] = "There was an error sending your message. Please try again."
      render 'homepage'
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :message)
  end
end
