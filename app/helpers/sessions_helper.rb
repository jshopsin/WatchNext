def current_user
  if session[:id]
    @current_user = User.find(session[:id])
  end
end

def logged_in?
  !!current_user
end

def login
  session[:id] = current_user.id
end

def logout
  session[:id] = nil
end
