Rails.application.routes.draw do
   # get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index' => 'welcome#index'
  get 'welcome/mathadd' => 'welcome#mathadd'
   root 'welcome#index'

end
