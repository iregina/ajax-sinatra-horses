get '/restaurants' do
	@restaurants = Restaurant.all
	erb :"/restaurants/index"
end

get '/restaurants/new' do
  @restaurant = Restaurant.new
  if request.xhr?
    erb :"/restaurants/new", layout: false
  else
    erb :"/restaurants/new"
  end
end

post '/restaurants' do
  @restaurant = Restaurant.new(params[:restaurant])
  if request.xhr?
    if @restaurant.save
      status 200
      erb :"/restaurants/_show", layout: false, locals: {restaurant: @restaurant}
    else
      status 422
      erb :"/restaurants/new", layout: false
    end
  else
    if @restaurant.save
      redirect '/restaurants'
    else
      erb :"/restaurants/new"
    end
  end
end