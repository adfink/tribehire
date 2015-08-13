class TribesController < ApplicationController

  def index
    @tribes = Tribe.all
  end

  def show
    @tribe = Tribe.find(params[:id])
    @alljobs = []
    skills = @tribe.users.map(&:skills)
    @skills = skills.flatten
    # binding.pry
    skills.flatten.map do |skill|
      page = Nokogiri::HTML(open("https://www.elance.com/r/jobs/q-#{skill.name.split(" ").join}%20/"))
      jobs = page.css("#jobSearchResults .jobCard").map do |job|

        link = job.at_css("a")['href']
        name = job.at_css("a.title").text.strip
        description = job.at_css(".desc").text.strip
        # full_description = job.at_css(".desc .descFull .expanded").text.strip
        new_job = Job.new(name:name, link:link, description:description)
        # binding.pry
        new_job.save
        new_job
      end
      @alljobs << jobs
     @alljobs = @alljobs.flatten
    end

    # binding.pry
  end

  def new
    @tribe = Tribe.new
  end

  def create
    # @tribe = Tribe.new(tribe_params)
    @tribe = current_user.tribes.create(tribe_params)
    # @tribe.user_id = session[:user_id]
    # binding.pry
    if @tribe.save
      UserRole.create(user_id: current_user.id, tribe_id: @tribe.id, role_id: 1)
      # binding.pry
      redirect_to @tribe, notice: 'tribe was successfully created.'
    else
      flash.now[:errors] = @tribe.errors.full_messages.join(", ")
      render action: 'new'
    end
  end

  private

  def tribe_params
    params.require(:tribe).permit(:avatar, :name, :story, :email, :phone, :address)
  end

end
