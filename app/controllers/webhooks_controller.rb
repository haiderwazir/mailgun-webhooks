class WebhooksController < ApplicationController
  def clicked
  	MailgunEvent.create_event(params)
  end

  def opened
  	MailgunEvent.create_event(params)
  end
end
