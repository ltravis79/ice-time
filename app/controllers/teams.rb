get '/leagues/:league_id/divisions/:division_id/seasons/:season_id/teams/:id' do 
	@current_team = Team.find(params[:id])
	erb :"/teams/show"
end

