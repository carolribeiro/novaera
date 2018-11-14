Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#index"
  get "/sobre" => "application#sobre"
  get "/cursos" => "application#cursos"
  get 'cursos/informatica'
  get 'cursos/espanhol'
  get "/noticias" => "application#noticias"
  get "/galeria" => "application#galeria"
  get "/contato" => "application#contato"
  get 'contato/new'
  post 'contato/create'
end
