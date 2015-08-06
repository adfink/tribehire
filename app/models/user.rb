class User < ActiveRecord::Base
  def self.find_or_create_from_oauth(oauth)
    user = User.find_or_create_by(provider: oauth.provider, uid: oauth.uid)

    user.email     = oauth.info.email
    user.name  = oauth.info.nickname
    user.image_url = oauth.info.image
    user.token     = oauth.credentials.token

    user.save

    user
  end

  def github_client
    @client ||= Octokit::Client.new(access_token: token)
    # binding.pry
  end

  def repos
    github_client.repos
  end

  #
  # def self.from_omniauth(auth_info)
  #
  #   if user = find_by(uid: auth_info.uid)
  #     user
  #   else
  #     # binding.pry
  #     create({name: auth_info.extra.raw_info.name,
  #         screen_name: auth_info.extra.raw_info.screen_name,
  #         uid: auth_info.uid,
  #         oauth_token: auth_info.credentials.token,
  #         oauth_token_secret: auth_info.credentials.secret,
  #         profile_image_url: auth_info.profile_image_url
  #       })
  #   end
  # end
  #
  #
  # def twitter_client
  #   @twitter_client ||= Twitter::REST::Client.new do |config|
  #     config.consumer_key = ENV["TWITTER_KEY"]
  #     config.consumer_secret = ENV["TWITTER_SECRET"]
  #     config.access_token = self.oauth_token
  #     config.access_token_secret = self.oauth_token_secret
  #   end
  # end
  #
  #
  # def twitter_timeline
  #   # binding.pry
  #   twitter_client.home_timeline
  # end

end
