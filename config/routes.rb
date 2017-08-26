Rails.application.routes.draw do
  resources :encargados, path_names: {new: 'nuevo', edit: 'editar'}

  resources :proyecto_patrocinadors
  resources :patrocinadors, path: "patrocinadores"
  resources :tutors
  
  resources :proyectos do
  	collection do 
  		get "mensaje"
  end
end
root "proyectos#index"
namespace :admin do
	resources :encargados
end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end