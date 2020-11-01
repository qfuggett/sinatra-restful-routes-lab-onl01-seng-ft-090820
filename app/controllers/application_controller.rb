class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end
  
  post '/recipes' do
    @recipes = Recipe.create(params)

    redirect to "/recipes/#{@recipes.id}"
  end
  
  get '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end
  
  get 'recipes/:id/edit' do
    binding.pry
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end
  
  
  
  delete 
  
end
