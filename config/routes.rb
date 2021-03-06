Rails.application.routes.draw do
  post 'home/index'
  post 'home/authentication'
  devise_for :users
  post 'home/index'
  post 'home/show'
  root to: "home#index"

  get 'posts' => 'posts#index'

  resources :posts, only: [:index, :new, :create, :show, :edit, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :social_account do

    get 'sign_out', to: "sign_out#index"
  end
  post 'sign_out', to: "top#index"

  root "top#index"
  post  "top/profile"
  resources :users

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    # root -> ルートパス(localhost:3000)でアクセスした場合に割り当てられる設定で、Controllerファイルに記述するindexメソッドを実行するように定義
  post 'posts', to: 'posts#index'

    # 投稿ページを表示
  post 'posts/new', to: 'posts#new'

  post 'posts', to: 'posts#create'

  post "posts/creat" => "posts#creat"

  get "posts/:id" => "posts#show"

  get "posts/:id" => "posts#show"

  post 'posts/create' => 'posts#create', as: :posts_create

  post  'posts/:id(.:format)'   =>   'posts#show'

end
