get '/leagues/:league_id/divisions/:division_id/seasons/:id' do 
	@current_season = Season.find(params[:id])
	erb :"/seasons/show"
end