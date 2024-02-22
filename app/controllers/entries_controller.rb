class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
    @place = Place.new
    @place["name"] = params["name"] 
    @place.save
    redirect_to "/places"
  end
  
end
