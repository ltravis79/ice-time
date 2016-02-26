get '/leagues/:league_id/divisions/:id' do 
	@current_division = Division.find(params[:id])
	erb :"/divisions/show"
end