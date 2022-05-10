

puts "done seeding promotion"
ufc = Promotion.create(name: "UFC")
puts "done seeding managers"
ali = Manager.create(name: "Ali Abdelaziz")
tim = Manager.create(name: "Tim Simpson")

puts "done seeding fighters"
seanStrickland = Fighter.create(name: "Sean Strickland", height: 73, reach: 76, weightclass: "Middleweight", wins: 25, losses:3, draws: 0, manager_id: ali.id, promotion_id: ufc.id)
conorMcGregor = Fighter.create(name: "Conor McGregor", height: 68, reach: 74, weightclass: "Featherweight, Lightweight, Welterweight", wins: 22, losses:3, draws: 0, manager_id: tim.id, promotion_id: ufc.id)

puts "done seeding bro"