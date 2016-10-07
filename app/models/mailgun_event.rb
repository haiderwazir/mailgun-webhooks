class MailgunEvent
  include Mongoid::Document
  field :city, type: String
  field :domain, type: String
  field :device_type, type: String
  field :country, type: String
  field :region, type: String
  field :client_name, type: String
  field :user_agent, type: String
  field :client_os, type: String
  field :ip, type: String
  field :client_type, type: String
  field :recipient, type: String
  field :event_type, type: String
  field :timestamp, type: String

  def self.create_event(params)
    self.create! city: params['city'], domain: params['domain'], device_type: params['device_type'], country: params['country'], region: params['region'],
    client_name: params['client_name'], user_agent: params['user_agent'], client_os: params['client_os'], ip: params['ip'], client_type: params['client_type'],
    recipient: params['recipient'], event_type: params['event'], timestamp: params['timestamp']
  end
end
