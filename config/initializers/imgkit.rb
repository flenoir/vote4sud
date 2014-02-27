IMGKit.configure do |config|
  config.wkhtmltoimage = Rails.root.join('wkhtmltoimage-amd64').to_s if ENV['RACK_ENV'] == 'production'
end