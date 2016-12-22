Rails.application.routes.draw do
  get 'problem/generate'

  get 'problem/check'

  get 'problem/solve'

  root to: 'application#page_not_found'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
