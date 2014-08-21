Rails.application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species/add', {:via => :post, :to => 'species#create'})
  match('species/:id/delete', {:via => :delete, :to => 'species#delete'})
  match('species/:id/edit', {:via => :get, :to => 'species#update'})
  match('species/:id/edit', {:via => :post, :to => 'species#do_update'})
  match('species/:id', {:via => :get, :to => 'species#show'})

end
