OmniAuth.config.logger = Rails.logger

ENV['GOOGLE_KEY'] = '633924057437-s3b8p0adtub5tao85do335utqaa6qq2s.apps.googleusercontent.com'

ENV['GOOGLE_SECRET'] = 'i5TX0ZA4frn0BUZEwx9sw6W3'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end

