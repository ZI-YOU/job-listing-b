Rails.application.routes.draw do
  devise_for :users
  
  root 'welcome#index'

  resources :jobs do
    collection do
    
    get :beijing
    get :shanghai
    get :shenzhen
    get :guangzhou
  end

  	resources :resumes
  end


  namespace :admin do
  	resources :jobs do
  		member do
  			post :publish
  			post :hide
  		end
      collection do
        get :beijing
        get :shanghai
        get :guangzhou
        get :shenzhen
        get :hangzhou
      end

      resources :resumes
  	end
  end
 
    namespace :shanghai do
      resources :jobs do
        member do
          post :publish
          post :hide
        end
       
         resources :resumes
      end
    end

    namespace :beijing do
      resources :jobs do
        member do
          post :publish
          post :hide
        end
       
         resources :resumes
      end
    end

   namespace :guangzhou do
      resources :jobs do
        member do
          post :publish
          post :hide
        end
      
         resources :resumes
      end
    end


  namespace :shenzhen do
      resources :jobs do
        member do
          post :publish
          post :hide
        end
      
         resources :resumes
      end
    end



  resources :beijing
  resources :shanghai
  resources :shenzhen
  resources :guangzhou

end