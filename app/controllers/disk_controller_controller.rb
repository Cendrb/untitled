class DiskControllerController < ApplicationController
  def genitalite
    competition = Competition.order("RANDOM()").first
    year = rand(Date.today.year() - 5..Date.today.year() + 5)
    penis = Noun.order("RANDOM()").first

    @disk = "Jeje #{params[:disker]} #{competition.name} #{year} #{params[:victim]} je #{penis.get_disk}"
  end

  def diskform

  end
end
