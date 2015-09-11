class ChunkerController < ApplicationController
  def penis
    @chunk = "#{ChunkerSubject.order("RANDOM()").first.name} #{ChunkerVerb.order("RANDOM()").first.name} #{ChunkerEnding.order("RANDOM()").first.name}"
  end

  def penis_form

  end
end
