Rails.application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species/add', {:via => :post, :to => 'species#create'})
  match('species/:id/delete', {:via => :delete, :to => 'species#delete'})
end
