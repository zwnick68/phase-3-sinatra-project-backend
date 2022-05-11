

puts "done seeding promotion"
ufc = Promotion.create(name: "UFC", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/UFC_Logo.svg/1200px-UFC_Logo.svg.png")
bellator = Promotion.create(name: "Bellator", image: "https://www.worldmmaawards.com/wp-content/uploads/2019/03/Bellator.jpg")
pfl = Promotion.create(name:"PFL", image: "https://upload.wikimedia.org/wikipedia/commons/5/56/Professional_Fighters_League_Primary_Logo.jpg")
puts "done seeding managers"
ali = Manager.create(name: "Ali Abdelaziz", image: "https://cdn.vox-cdn.com/thumbor/noy2KBFLbqlR6RMT71zSMwIo8Q8=/0x93:732x581/1200x800/filters:focal(0x93:732x581)/cdn.vox-cdn.com/uploads/chorus_image/image/13106033/img952167.0.jpg")
tim = Manager.create(name: "Tim Simpson", image: "https://images.perthnow.com.au/publication/B88738037Z/1518258303029_GU31F1L3C.1-2.jpg?imwidth=1024&impolicy=pn_v3")

puts "done seeding fighters"
seanStrickland = Fighter.create(name: "Sean Strickland", height: 73, reach: 76, weightclass: "Middleweight", wins: 25, losses:3, draws: 0, manager_id: tim.id, promotion_id: ufc.id, image: "https://images.tapology.com/letterbox_images/6055/default/Sean-Strickland.jpg?1377533040")
conorMcGregor = Fighter.create(name: "Conor McGregor", height: 68, reach: 74, weightclass: "Featherweight, Lightweight, Welterweight", wins: 22, losses:3, draws: 0, manager_id: tim.id, promotion_id: ufc.id, image: "https://images.tapology.com/letterbox_images/14607/default/IMG_20210217_063555.jpg?1613544097")
kamaruUsman = Fighter.create(name: "Kamaru Usman", height: 72, reach: 76, weightclass: "Welterweight", wins: 20, losses:1, draws: 0, manager_id: ali.id, promotion_id: ufc.id, image: "https://images.tapology.com/letterbox_images/39265/default/Kamaru-Usman.jpg?1366648419")
islamMakhachev = Fighter.create(name: "Islam Makhachev", height: 71, reach: 70.5, weightclass: "Lightweight", wins: 22, losses:1, draws: 0, manager_id: ali.id, promotion_id: ufc.id, image: "https://images.tapology.com/letterbox_images/40148/default/Islam-Makhachev.jpg?1437931663")
michaelPage = Fighter.create(name: "Michael Page", height: 75, reach: 79, weightclass: "Welterweight", wins: 20, losses:1, draws: 0, manager_id: tim.id, promotion_id: bellator.id, image: "https://images.tapology.com/letterbox_images/21208/default/Michael-Page.jpg?1543601348")

puts "done seeding bro"