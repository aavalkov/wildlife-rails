class SpeciesController <ApplicationController

  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  def create
    @species = Species.all
    @new_species = Species.create(name: params[:name])
    render('species/index.html.erb')
  end

  def delete
    @species = Species.all
    @new_species = Species.find_by(:id => params[:id])
    @new_species.destroy
    render('species/index.html.erb')
  end

  def edit
    @species = Species.all
    @edit_species = Species.find_by(:id =>params[:id])
    render('species/edit_index.html.erb')
  end

  def editpage
    @species = Species.find_by(:id =>params[:id])
    @sightings = Sighting.all.where(:species_id => @species.id)
    render('species/edit_species.html.erb')
  end

  def update
    @species = Species.all
    @edit_species = Species.find_by(:id =>params[:id])
    @edit_species.update(:name => params[:new_name])
    render('species/index.html.erb')
  end

  def show
    @species = Species.find_by(:id =>params[:id])
    @sightings = Sighting.all.where(:species_id => @species.id)
    render('species/species.html.erb')
  end


end
