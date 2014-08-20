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

end
