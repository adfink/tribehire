require 'open-uri'
class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
    page = Nokogiri::HTML(open("https://www.elance.com/r/jobs/q-rails%20/"))
    # Event = Struct.new :name , :link , :date
    #
    # doc = Nokogiri::HTML DATA

    jobs = page.css("#jobSearchResults .jobCard").map do |job|

      link = job.at_css("a")['href']
      name = job.at_css("a.title").text.strip
      description = job.at_css(".desc").text.strip
      # full_description = job.at_css(".desc .descFull .expanded").text.strip
      binding.pry
      Job.new(name , link , description)
    end
  end

end
