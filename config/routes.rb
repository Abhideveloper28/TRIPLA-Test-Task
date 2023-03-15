Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'followee/:id' ,to: 'follows#followees'
  get 'followers/:id', to: 'follows#followers'
  post 'follow', to: 'follows#create'
  delete 'unfollow/:id/:followee_id', to: "follows#destroy"
end
