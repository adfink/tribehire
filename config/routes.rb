Rails.application.routes.draw do
  root 'welcome#index2'
  get '/auth/github', :as => :login
  get '/auth/github/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :tribes
  resources :users
  resources :skills
  resources :elance
  resources :tribe_users

  namespace :admin do
    resources :tribes
    resources :categories
    resources :users, only: [:show, :update]
    resources :orders, only: [:update]
  end



  # Client ID: 55c53100e4b0ce56b5a32f86
  # Client Secret: BHqeHnRgWvHNwe0PlwJZ_g
  #
  # http://localhost:3000/auth/elance/callback


#   response = HTTParty.post("https://api.elance.com/api2/oauth/token", :body => { :code => params[:code], :grant_type => 'authorization_code', :client_id => 'add your client id here', :client_secret => 'add your client secret here'})
#   json_response = JSON.parse(response.body)
#   access_token = json_response['data']['access_token']
#   @access_token = AccessToken.new(:access_token  => json_response['data']['access_token'],
#     :expired_at    => Time.now + json_response['data']['expires_in'].to_i,
#     :status        => 'Active',
#     :source        => 'Elance',
#     :user_id       => current_user.id,
#     :refresh_token => json_response['data']['refresh_token']
#   )
#   @access_token.save!
#   CustomMailer.send_code_mail(params[:code], access_token).deliver
#
#   flash[:notice] = "Successfully Connected to Elance"
#   redirect_to rails_admin_path
#
end
