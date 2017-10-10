Rails.application.routes.draw do
  get 'page/about_us'

  get 'page/contact'

  resources :masjids do
    resources :timings
  end
  root 'masjids#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
