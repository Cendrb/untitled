class Noun < ActiveRecord::Base
  def get_disk
    adjectives = Adjective.order("RANDOM()").limit(rand(1..2)).pluck(:name).join(" ")
    return "#{adjectives} #{name}"
  end
end
