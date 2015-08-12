require 'open-uri'
class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    # binding.pry
    current_user.skills.create(name:params[:skill][:name])
    redirect_to current_user
  end

  def show
    @skill = Skill.find(params[:id])
    page = Nokogiri::HTML(open("https://www.elance.com/r/jobs/q-#{@skill.name.split(" ").join}%20/"))
    # Event = Struct.new :name , :link , :date
    #
    # doc = Nokogiri::HTML DATA

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
    @jobs = jobs
  end

end
