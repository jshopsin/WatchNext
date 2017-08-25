get '/movies/new' do
  @movie = Movie.new
  erb :"movies/new"
end

post '/movies/new' do
  @movie = Movie.new(name: params[:name])
  @movie.user = current_user
  redirect '/'
end
