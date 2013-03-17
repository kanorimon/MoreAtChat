Chatapp::Application.routes.draw do
  # root
  get "contents/index"
  root :to => 'contents#index'

  resources :contents
  resources :sessions

  # OmniAuth
  get "/auth/:provider/callback" => "sessions#create"

  # ログアウト
  get "/logout" => "sessions#destroy", :as => :logout
  # 退会
  get "/remove" => "users#destroy", :as => :remove

  # 利用規約
  get "/rule" => "contents#rule", :as => :rule
  # ヘルプ
  get "/help" => "contents#help", :as => :help
  
end
