# cahl_s = League.create(name: "Coyotes Adult Hockey League", city: "Scottsdale", state: "AZ")
# cahl_c = League.create(name: "Coyotes Adult Hockey League", city: "Chandler", state: "AZ")

# ib_s = Division.create(name: "Icebreaker", description: "Ankle benders!", league_id: cahl_s.id)
# ib_c = Division.create(name: "Icebreaker", description: "Ankle benders!", league_id: cahl_c.id)

# seas1 = Season.create(description: "Fall/Winter 2015-2016", division_id: ib_s.id)
# seas2 = Season.create(description: "Fall/Winter 2015-2016", division_id: ib_c.id)

# em = Team.create(name: "Evil Monkey", season_id: seas1.id)
# Team.create(name: "Top Shelf", season_id: seas1.id)
# Team.create(name: "Mayhem", season_id: seas1.id)
# Team.create(name: "Roadrunners", season_id: seas1.id)
# Team.create(name: "Old Time Hockey", season_id: seas1.id)
# Team.create(name: "Rehab", season_id: seas1.id)

# hs = Team.create(name: "Hot Shots", season_id: seas2.id)
# Team.create(name: "Roadrunners", season_id: seas2.id)
# Team.create(name: "Grinders", season_id: seas2.id)
# Team.create(name: "Alcohooligans", season_id: seas2.id)
# Team.create(name: "Brew", season_id: seas2.id)
# Team.create(name: "Scar Tissue", season_id: seas2.id)
# Team.create(name: "Team Ramrod", season_id: seas2.id)
# Team.create(name: "Yard Dogs", season_id: seas2.id)
# Team.create(name: "Misfits", season_id: seas2.id)
# Team.create(name: "Ice Vikings", season_id: seas2.id)


hot_shots = Team.find(7)
others = Season.find(2).teams.where.not(id: 7)

Game.all.each do |game|
	Opponent.create(team_id: 7, game_id: game.id)
	Opponent.create(team_id: others.sample(1).first.id, game_id: game.id)
end
