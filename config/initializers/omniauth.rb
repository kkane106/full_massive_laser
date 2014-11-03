OmniAuth.config.logger = Rails.logger

ENV['GOOGLE_KEY'] = '633924057437-11t1p3vajkd0d2hte7k5gt2edkt3n8nk.apps.googleusercontent.com'

ENV['GOOGLE_SECRET'] = '4Z3DFXerHVXdlWYJObX-9xnD'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end

