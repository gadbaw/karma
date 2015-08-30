class TwilioWrapper

  SID = ENV["twilio_key"]
  TOKEN = ENV["twilio_token"]
  PHONE = ENV["twilio_phone_number"]

  attr_accessor :client

  def initialize  
    @client = Twilio::REST::Client.new(SID, TOKEN)
  end
  
  def send_sms(message_object)
    client.messages.create(
    from: PHONE,
    to: message_object.phone_number,
    body: message_object.message_body
    )

  end

end