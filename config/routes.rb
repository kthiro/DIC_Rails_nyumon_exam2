Rails.application.routes.draw do
  get 'blogs/new', to: 'blogs#new'

  post 'blogs/create', to: 'blogs#create'

  post 'blogs/confirm', to: 'blogs#confirm'

  get 'blogs/:id/edit', to: 'blogs#edit'

  patch 'blogs/:id/update', to: 'blogs#update'

  get 'blogs', to: 'blogs#index'

  delete 'blogs/:id/destroy', to: 'blogs#destroy'

end
