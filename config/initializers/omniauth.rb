Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['github_key'] , ENV['github_secret']
end

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :github, "f41bd31219eaca869c39" , "c61d2fa2b32fd7010835cafc584be589870315a6"
# end




# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :linkedin, "consumer_key", "consumer_secret"
# end
