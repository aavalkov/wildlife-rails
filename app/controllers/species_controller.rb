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

end
