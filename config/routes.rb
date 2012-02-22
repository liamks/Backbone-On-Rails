BackboneOnRails::Application.routes.draw do

  match "/backboneApp" => 'backboneApp#show'
  # root :to => 'welcome#index'

end
