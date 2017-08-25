get '/sessions/new' do
  @user = User.new
  erb :"sessions/new"
end

post '/sessions/new' do
  @user = User.find_by(email: params[:email])

  if @user && @user.password == params[:password]
    login
    redirect '/'
  else
    @errors = ["Email or Password is invalid."]
    erb :"sessions/new"
  end
end

delete '/sessions' do
  logout
  redirect '/'
end
