get '/leagues' do
	@leagues = League.all
	erb :"/leagues/index"
end

get '/leagues/:id' do
	@current_league = League.find(params[:id])
	erb :"/leagues/show"
end