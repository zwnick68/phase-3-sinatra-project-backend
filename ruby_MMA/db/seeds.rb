

puts "done seeding promotion"
ufc = Promotion.create(name: "UFC", image: "https://www.thesportsdb.com/images/media/league/badge/bp65fy1549122111.png")
bellator = Promotion.create(name: "Bellator", image: "https://www.worldmmaawards.com/wp-content/uploads/2019/03/Bellator.jpg")
pfl = Promotion.create(name:"PFL", image: "https://upload.wikimedia.org/wikipedia/commons/5/56/Professional_Fighters_League_Primary_Logo.jpg")
puts "done seeding managers"
ali = Manager.create(name: "Ali Abdelaziz", image: "https://cdn.vox-cdn.com/thumbor/noy2KBFLbqlR6RMT71zSMwIo8Q8=/0x93:732x581/1200x800/filters:focal(0x93:732x581)/cdn.vox-cdn.com/uploads/chorus_image/image/13106033/img952167.0.jpg")
tim = Manager.create(name: "Tim Simpson", image: "https://images.perthnow.com.au/publication/B88738037Z/1518258303029_GU31F1L3C.1-2.jpg?imwidth=1024&impolicy=pn_v3")

puts "done seeding fighters"
seanStrickland = Fighter.create(name: "Sean Strickland", height: 73, reach: 76, weightclass: "Middleweight", wins: 25, losses:3, draws: 0, manager_id: tim.id, promotion_id: ufc.id, image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2022-03/fe752a6f-ea39-4367-8e36-63ffbbb24729%252FSTRICKLAND_SEAN_L_02-05.png?itok=ilqO_Tg8")
conorMcGregor = Fighter.create(name: "Conor McGregor", height: 68, reach: 74, weightclass: "Featherweight, Lightweight, Welterweight", wins: 22, losses:3, draws: 0, manager_id: tim.id, promotion_id: ufc.id, image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-07/MCGREGOR_CONOR_L_07-10.png?itok=Z_HGJh5F")
kamaruUsman = Fighter.create(name: "Kamaru Usman", height: 72, reach: 76, weightclass: "Welterweight", wins: 20, losses:1, draws: 0, manager_id: ali.id, promotion_id: ufc.id, image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-04/68441%252Fprofile-galery%252Ffullbodyleft-picture%252FUSMAN_KAMARU_L_BELT_04-24.png?VersionId=null&itok=CPHm34Jo")
islamMakhachev = Fighter.create(name: "Islam Makhachev", height: 71, reach: 70.5, weightclass: "Lightweight", wins: 22, losses:1, draws: 0, manager_id: ali.id, promotion_id: ufc.id, image: "https://dmxg5wxfqgb4u.cloudfront.net/styles/athlete_bio_full_body/s3/2021-07/68127%252Fprofile-galery%252Ffullbodyleft-picture%252FMAKHACHEV_ISLAM_L_07-17.png?itok=zHX5_7j8")
michaelPage = Fighter.create(name: "Michael Page", height: 75, reach: 79, weightclass: "Welterweight", wins: 20, losses:1, draws: 0, manager_id: tim.id, promotion_id: bellator.id, image: "https://external-preview.redd.it/Nml6uRC4P1p8Y68M65uneLg8gVkydlmHUlidcTm_Chg.jpg?width=640&crop=smart&auto=webp&s=1d59dc46ec6bf7065bf608c93e828451d44f0665")

puts "done seeding bro"