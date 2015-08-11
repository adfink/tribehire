require 'json'
class ElanceCommunicator


  def authenticate
    HTTParty.get("httpqs://api.elance.com/api2/oauth/authorize",
      :query => { :client_id => "55c53100e4b0ce56b5a32f86",
        :redirect_uri => "http://localhost:3000/auth/elance/callback",
        :request_type => "code"
      })
  end

  def jobs(current_user)
    HTTParty.get("httpqs://api.elance.com/api2/jobs/#{current_user.skills.first.name}")
  end

  def connect(params)
    authenticate
    response = jobs(params)

# binding.pry
    json_response = Hash.from_xml(response).to_json

    access_token = json_response['data']['access_token']
  end
  # def connect(params)
  #   response = HTTParty.post("https://api.elance.com/api2/oauth/authorize?client_id=55c53100e4b0ce56b5a32f86&redirect_uri=http://localhost:3000/auth/elance/callback&scope=basicInfo&response_type=code")
  #   json_response = Hash.from_xml(response).to_json
  #   binding.pry
  #   # json = response.body.to_json
  #   # json_response = JSON.parse(json, :quirks_mode => true)
  #   # json_response = JSON.parse([response.body].to_json).first
  #
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
  #   binding.pry
  #   redirect_to rails_admin_path
  #
  # end

  # def connect(params)
  #   response = HTTParty.get("https://api.elance.com/api2/oauth/token", :body => { :code => params[:code], :grant_type => 'authorization_code', :client_id => '55c53100e4b0ce56b5a32f86', :client_secret => 'BHqeHnRgWvHNwe0PlwJZ_g'})
  #   json_response = JSON.parse(response.body)
  #   access_token = json_response['data']['access_token']
  #   @access_token = AccessToken.new(:access_token  => json_response['data']['access_token'],
  #   :expired_at    => Time.now + json_response['data']['expires_in'].to_i,
  #   :status        => 'Active',
  #   :source        => 'Elance',
  #   :user_id       => current_user.id,
  #   :refresh_token => json_response['data']['refresh_token']
  #   )
  #   @access_token.save!
  #   CustomMailer.send_code_mail(params[:code], access_token).deliver
  #
  #   flash[:notice] = "Successfully Connected to Elance"
  #   binding.pry
  #   redirect_to rails_admin_path
  #
  # end

end
