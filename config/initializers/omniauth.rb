require 'bundler/setup'
require 'omniauth-facebook'


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET'], :scope => 'email,read_stream'
end


