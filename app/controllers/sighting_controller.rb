class SightingController < ApplicationController

  def create
    @species = Species.find_by(:id =>params[:id])
    @sightings = Sighting.all.where(:species_id => @species.id)
    @new_sightings = Sighting.create(:date => params[:date], :latitude => params[:lat], :longitude => params[:long], :species_id => @species.id)
    render('species/species.html.erb')
  end

  def edit
    @edit_sighting = Sighting.find_by(:id =>params[:id])
    @species = Species.find_by(:id =>params[:id])
    @sightings = Sighting.all.where(:species_id => @species.id)
    render('sighting/edit_sighting.html.erb')
  end

  def update
    @species = Species.all
    @edit_species = Species.find_by(:id =>params[:id])
    @edit_species.update(:name => params[:new_name])
    render('species/species.html.erb')
  end

  def delete
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to("/species/#{@sighting.species_id}")
  end
end
