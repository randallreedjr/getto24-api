Rails.application.routes.draw do
  get 'problem/generate'

  get 'problem/check'

  get 'problem/solve'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
