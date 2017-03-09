Rails.application.routes.draw do
  root 'welcome#register'
  get 'welcome/register'

  get 'game/play'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
