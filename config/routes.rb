Rails.application.routes.draw do
  get 'answer' => 'coaching#answer', as: :answer

  get 'ask' => 'coaching#ask', as: :ask

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
