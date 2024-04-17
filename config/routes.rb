Rails.application.routes.draw do
  resources :books do 
    member do
      get 'refresh'
    end
  end
  root "books#index"
  # get 'books/:id/refresh', to: 'books#refresh', as: 'refresh_book'
  get 'ftp_demo/upload_form'
  post 'ftp_demo/upload'
end
