get '/sessions/new' do 
	#login form
	erb :'sessions/new'
end

post '/sessions' do 
	user = User.find_by(email: params[:email])
	# Add error checking logic
	if user.password == params[:password]
		"Successful Login"
	else
		"Failed Login"
	end
end

delete '/sessions/:id' do 
	session[:user_id] = nil
end