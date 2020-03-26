Rails.application.routes.draw do
  devise_for :users,
    path: 'api/v1/users/',
    controllers: {
      sessions: 'api/v1/users/sessions',
      registrations: 'api/v1/users/registrations',
      passwords: 'api/v1/users/passwords'
    },
    defaults: { format: :json }

  namespace :api do
    namespace :v1 do
      resources :careers
      resources :exam_instances
      resources :semesters
      resources :courses
      resources :user_courses
      resources :exams
      resources :institutes
    end
  end
  
  match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]
end
