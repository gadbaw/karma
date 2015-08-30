class SendController < ApplicationController

  def new
  end

  def create
    phone_number = params["phone number"]
    message = params["your message"]
    message_object = Message.new(phone_number: phone_number, message_body: message)
    if message_object.save
      @send = TwilioWrapper.new
      @send.send_sms(message_object)
      flash[:success] = "sent your message!"
    end
    redirect_to root_path

  end

  def index
  end

end