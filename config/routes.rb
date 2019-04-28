Rails.application.routes.draw do
  resources :add_column_active_to_table_students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]
  get 'students/:id/active', :to => 'students#active', as: 'activate_student'
end
