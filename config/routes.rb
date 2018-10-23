Rails.application.routes.draw do
  get 'home/index'
  get 'home/authentication'
  devise_for :users
  get 'home/index'
  get 'home/show'
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :social_account do

    get 'sign_out', to: "sessions#destroy"
   end
       get 'sign_out', to: "top#index"

       root "top#index"
          get  "top/profile"
          resources :users

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    # root -> ルートパス(localhost:3000)でアクセスした場合に割り当てられる設定で、Controllerファイルに記述するindexメソッドを実行するように定義
    get 'posts', to: 'posts#index'

    # 投稿ページを表示
    get 'posts/new', to: 'posts#new'



end
