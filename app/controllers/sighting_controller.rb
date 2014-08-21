class SightingController < ApplicationController

  def create
    @species = Species.find_by(:id =>params[:id])
    @sightings = Sighting.all.where(:species_id => @species.id)
    @new_sightings = Sighting.create(:date => params[:date], :latitude => params[:lat], :longitude => params[:long], :species_id => @species.id)
    render('species/show.html.erb')
  end

  def delete
    @species = Species.find_by(:id =>params[:id])
    @sightings = Sighting.all.where(:species_id => @species.id)
    Sighting.find(params[:id]).destroy
    redirect_to('species/show.html.erb')
  end
end
