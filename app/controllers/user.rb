get '/users/new' do 
	erb :"/users/new"
end

post '/users' do 
	new_user = User.new(name: params[:name], email: params[:email], password: params[:password])
	new_user.save
	# Add error checking logic
	session[:user_id] = new_user.id
	# redirect somewhere
	"Successful Registration"
end