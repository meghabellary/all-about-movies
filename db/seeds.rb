# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

batman_begins = Movie.create(image_url:"https://upload.wikimedia.org/wikipedia/en/a/af/Batman_Begins_Poster.jpg",title: "Batman Begins", plot: "As a child, Bruce Wayne falls down into a dry well and is attacked by a swarm of bats, subsequently developing a phobia of the creatures. While watching an opera with his parents, Thomas and Martha, Bruce becomes frightened by performers masquerading as bats and asks to leave. Outside, mugger Joe Chill murders Bruce's parents in front of him. Orphaned, Bruce is raised by the family butler, Alfred Pennyworth.", release_date:"2005-06-15", trailer_url: "https://www.youtube.com/watch?v=neY2xVmOfUM", imbd_movie_id: "tt0372784")
the_dark_knight = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg",title: "The Dark Knight", plot: "A gang of criminals rob a Gotham City mob bank, murdering each other until only the mastermind remains: the Joker, who escapes with the money.",release_date:"2008-07-18", trailer_url: "https://www.youtube.com/watch?v=_PZpmTj1Q8Q", imbd_movie_id: "tt0468569")
the_dark_knight_rises = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_.jpg",title: "The Dark Knight Rises", plot: "Eight years after the death of District Attorney Harvey Dent, Batman has disappeared and organized crime has been eradicated in Gotham City thanks to the Dent Act. Police Commissioner James Gordon has kept secret Dent's murderous rampage and allowed blame for his crimes to fall on Batman. He writes a resignation speech revealing the truth, but decides that the city is not ready to hear it.",release_date:"2012-07-20",trailer_url: "https://www.youtube.com/watch?v=g8evyE9TuYk&t=8s", imbd_movie_id: "tt1345836")
iron_man = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_SY1000_CR0,0,674,1000_AL_.jpg",title: "Iron Man", plot: "Genius, billionaire, and playboy Tony Stark, who has inherited the defense contractor Stark Industries from his father, is in war-torn Afghanistan with his friend and military liaison Lieutenant Colonel James Rhodes to demonstrate the new Jericho missile. After the demonstration, the convoy is ambushed and Stark is critically wounded by one of his own company's rocket-propelled grenades. He is captured and imprisoned in a cave by a terrorist group, the Ten Rings; Yinsen, a fellow captive who is a doctor, implants an electromagnet into Stark's chest to keep the shrapnel shards that wounded him from reaching his heart and killing him. Ten Rings leader Raza offers Stark freedom in exchange for building a Jericho missile for the group, but Tony and Yinsen know that Raza will not keep his word.", release_date:"2008-05-02", trailer_url: "https://www.youtube.com/watch?v=W7yOdog7Dxg", imbd_movie_id: "tt0371746")
iron_man2 = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTM0MDgwNjMyMl5BMl5BanBnXkFtZTcwNTg3NzAzMw@@._V1_.jpg",title: "Iron Man 2", plot: "With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father's legacy.", release_date:"2010-05-07", trailer_url: "https://www.youtube.com/watch?v=BoohRoVA9WQ", imbd_movie_id: "tt1228705")
iron_man3 = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTkzMjEzMjY1M15BMl5BanBnXkFtZTcwNTMxOTYyOQ@@._V1_SY1000_SX700_AL_.jpg",title: "Iron Man 3", plot: "When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.", release_date:"2013-05-03", trailer_url: "https://www.youtube.com/watch?v=oYSD2VQagc4", imbd_movie_id: "tt1300854")
spider_man = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BZDEyN2NhMjgtMjdhNi00MmNlLWE5YTgtZGE4MzNjMTRlMGEwXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_.jpg",title: "Spider Man", plot: "When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.", release_date:"2002-05-03", trailer_url:"https://www.youtube.com/watch?v=O7zvehDxttM", imbd_movie_id: "tt0145487")
the_incredible_hulk = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTUyNzk3MjA1OF5BMl5BanBnXkFtZTcwMTE1Njg2MQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg",title: "The Incredible Hulk", plot: "Bruce Banner, a scientist on the run from the U.S. Government, must find a cure for the monster he turns into, whenever he loses his temper.", release_date:"2008-06-13", trailer_url:"https://www.youtube.com/watch?v=xbqNb2PFKKA", imbd_movie_id: "tt0145487")
wonder_woman = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BNDFmZjgyMTEtYTk5MC00NmY0LWJhZjktOWY2MzI5YjkzODNlXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_SY1000_SX675_AL_.jpg",title: "Wonder Woman", plot: "When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.", release_date:"2017-06-17", trailer_url:"https://www.youtube.com/watch?v=1Q8fG0TtVAY", imbd_movie_id: "tt0451279")
black_panther = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_SY1000_CR0,0,674,1000_AL_.jpg",title: "Black Panther", plot: "T'Challa, the King of Wakanda, rises to the throne in the isolated, technologically advanced African nation, but his claim is challenged by a vengeful outsider who was a childhood victim of T'Challa's father's mistake.", release_date:"2018-02-16", trailer_url:"https://www.youtube.com/watch?v=xjDjIWPwcPU", imbd_movie_id: "tt1825683")
doctor_strange = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BNjgwNzAzNjk1Nl5BMl5BanBnXkFtZTgwMzQ2NjI1OTE@._V1_SY1000_CR0,0,674,1000_AL_.jpg",title: "Doctor Strange", plot: "While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.", release_date:"2016-11-14", trailer_url:"https://www.youtube.com/watch?v=MWRUNTLisPo", imbd_movie_id: "tt1211837")
justice_league = Movie.create(image_url:"https://ia.media-imdb.com/images/M/MV5BYWVhZjZkYTItOGIwYS00NmRkLWJlYjctMWM0ZjFmMDU4ZjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SY1000_SX675_AL_.jpg",title: "Justice League", plot: "Fueled by his restored faith in humanity and inspired by Superman's selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy.",release_date:"2017-11-17", trailer_url:"https://www.youtube.com/watch?v=3cxixDgHUYw", imbd_movie_id:"tt0974015" )


christian_bale = Actor.create(image_url: "https://ia.media-imdb.com/images/M/MV5BMTkxMzk4MjQ4MF5BMl5BanBnXkFtZTcwMzExODQxOA@@._V1_SY1000_CR0,0,665,1000_AL_.jpg", name: "Christian Bale", age: 44, description: "Bale was born in Haverfordwest, Pembrokeshire, the son of Jenny (née James), a circus performer, and David Bale, an entrepreneur, commercial pilot and talent manager.Bale has three sisters.His mother is English and his father was born in South Africa. He spent his childhood in Wales, Surrey and Dorset in England, and Portugal.Bale acknowledged that the frequent relocation had a major influence on his career choice.His first acting role was a commercial for the fabric softener Lenor in 1982. A year later, he appeared in a Pac-Man cereal commercial playing a child rock star. In 1984, he made his stage debut in The Nerd on London's West End with Rowan Atkinson.")
micheal_caine = Actor.create(image_url: "https://ia.media-imdb.com/images/M/MV5BMjAwNzIwNTQ4Ml5BMl5BanBnXkFtZTYwMzE1MTUz._V1_.jpg",name: "Micheal Caine", age: 85, description: "Michael Caine was born Maurice Joseph Micklewhite Jr. on 14 March 1933 in St Olave's Hospital in Rotherhithe, London. Caine began his acting career at the age of 20 in Horsham, Sussex, when he responded to an advertisement in The Stage for an assistant stage manager who would also perform small walk-on parts for the Horsham-based Westminster Repertory Company who were performing at the Carfax Electric Theatre.")
liam_neeson = Actor.create(image_url: "https://ia.media-imdb.com/images/M/MV5BMjA1MTQ3NzU1MV5BMl5BanBnXkFtZTgwMDE3Mjg0MzE@._V1_.jpg", name: "Liam Neeson", age: 65, description: "Neeson was born in Ballymena, County Antrim, Northern Ireland, the son of Katherine Kitty Neeson (née Brown), a cook, and Bernard Barney Neeson, a caretaker at the Ballymena Boys All Saints Primary School.")
robert_downey_jr = Actor.create(image_url:"https://ia.media-imdb.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_SY1000_CR0,0,664,1000_AL_.jpg", name: "Robert Downey Jr", age: 53, description: "Downey was born in Manhattan, New York on April 4, 1965, the younger of two children. His father, Robert Downey Sr., is an actor and filmmaker, while his mother, Elsie Ann (née Ford), was an actress who appeared in Downey Sr.'s films.Downey's father is of half Lithuanian Jewish, one-quarter Hungarian Jewish, and one-quarter Irish descent, while Downey's mother had Scottish, German, and Swiss ancestry.Downey and his older sister Allyson grew up in Greenwich Village")
terrence_howard = Actor.create(image_url: "https://ia.media-imdb.com/images/M/MV5BMTk3NTY4NzgyOV5BMl5BanBnXkFtZTcwODEzNTkxNg@@._V1_.jpg" ,name: "Terrence Howard", age: 49, description: "Howard was born in Chicago, Illinois, on March 11, 1969, to Tyrone and Anita (née Hawkins) Howard. He is the great-grandson of stage actress Minnie Gentry. Howard first entered the entertainment world when he portrayed Jackie Jackson in The Jacksons: An American Dream, an ABC miniseries. Three years later, he made his big film break in 1995's Mr. Holland's Opus.")
gwyneth_kate_paltrow = Actor.create(image_url:"https://ia.media-imdb.com/images/M/MV5BNzIxOTQ1NTU1OV5BMl5BanBnXkFtZTcwMTQ4MDY0Nw@@._V1_SY1000_CR0,0,665,1000_AL_.jpg",name: "Gwyneth Kate Paltrow", age: 45, description: "Paltrow was born in Los Angeles, the daughter of actress Blythe Danner and film producer-director Bruce Paltrow (1943–2002). She has a younger brother, Jake Paltrow, who is a director and screenwriter.")
tobey_maguire = Actor.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTYwMTI5NTM2OF5BMl5BanBnXkFtZTcwODk3MDQ2Mg@@._V1_.jpg",name: "Tobey Maguire", age: 42, description: "Tobias Vincent Maguire was born in Santa Monica, California, the son of Wendy (née Brown), a secretary turned screenwriter and film producer and a construction worker and cook. He has four half-brothers.He is of one eighth Austrian and one eighth Puerto Rican descent.His parents, 18 and 20 years old, were unmarried at the time of his birth; the two married and subsequently divorced when Maguire was two.Maguire spent much of his childhood moving from town to town, living with each parent and other family members.")
kirsten_dunst = Actor.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTQ3NzkwNzM1MV5BMl5BanBnXkFtZTgwMzE2MTQ3MjE@._V1_SY1000_CR0,0,751,1000_AL_.jpg",name: "Kirsten Dunst", age: 36, description: "Kirsten Caroline Dunst is an American actress, who also holds German citizenship. She was born on April 30, 1982 in Point Pleasant, New Jersey, to parents Inez (née Rupprecht), who owned an art gallery, and Klaus Dunst, a medical services executive. She has a younger brother named Christian Dunst, born in 1987. Her father is German, from Hamburg, and her mother, who is American, is of German and Swedish descent.")
gal_gadot = Actor.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMjUzZTJmZDItODRjYS00ZGRhLTg2NWQtOGE0YjJhNWVlMjNjXkEyXkFqcGdeQXVyMTg4NDI0NDM@._V1_.jpg",name: "Gal Gadot", age: 33, description: "Gal Gadot was born in Petah Tikva and raised in its neighbouring city of Rosh HaAyin.[10] In Hebrew, her first name means wave and her surname means riverbanks.Her parents are Irit (née Weiss), a teacher, and Michael Gadot, an engineer. Both her parents were born in Israel, and they Hebraized their surname from Greenstein. Her father is a sixth-generation Israeli.Her maternal grandparents were born in Europe; her grandfather, who was imprisoned in the Auschwitz concentration camp, survived the Holocaust, and her grandmother left before the Nazi invasion.[14][15][16] Gadot has stated that she was brought up in a very Jewish, Israeli family environment. Her ancestry is Polish-Jewish, Austrian-Jewish, German-Jewish, and Czech-Jewish.She has one younger sister, Dana.")
chadwick_boseman = Actor.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTk2OTY5MzcwMV5BMl5BanBnXkFtZTgwODM4MDI5MjI@._V1_SY1000_CR0,0,666,1000_AL_.jpg",name: "Chadwick Boseman", age: 40, description: "Boseman was born and raised in Anderson, South Carolina, the only child of Carolyn and Leroy Boseman, both African American.Boseman graduated from T. L. Hanna High School in 1995.[7] In his junior year, he wrote his first play, Crossroads, and staged it at the school after a classmate was shot and killed.He studied at Howard University in Washington, DC, graduating in 2000 with a bachelor of fine arts in directing.")
edward_norton = Actor.create(image_url:"https://ia.media-imdb.com/images/M/MV5BMTYwNjQ5MTI1NF5BMl5BanBnXkFtZTcwMzU5MTI2Mw@@._V1_.jpg",name: "Edward Harrison Norton", age: 48, description: "Norton was born in Boston, Massachusetts and raised in Columbia, Maryland. His father, Edward Mower Norton Jr., served in Vietnam as a Marine lieutenant and was later an environmental lawyer and conservation advocate working in Asia, as well as a federal prosecutor in the Carter administration.")

MovieActor.create(movie: batman_begins, actor: christian_bale)
MovieActor.create(movie: batman_begins, actor: micheal_caine)
MovieActor.create(movie: batman_begins, actor: liam_neeson)
MovieActor.create(movie: the_dark_knight, actor: christian_bale)
MovieActor.create(movie: the_dark_knight, actor: micheal_caine)
MovieActor.create(movie: the_dark_knight_rises, actor: christian_bale)
MovieActor.create(movie: the_dark_knight_rises, actor: micheal_caine)
MovieActor.create(movie: iron_man, actor: robert_downey_jr)
MovieActor.create(movie: iron_man, actor: terrence_howard)
MovieActor.create(movie: iron_man, actor: gwyneth_kate_paltrow)
MovieActor.create(movie: iron_man2, actor: robert_downey_jr)
MovieActor.create(movie: iron_man2, actor: gwyneth_kate_paltrow)
MovieActor.create(movie: spider_man, actor: tobey_maguire)
MovieActor.create(movie: spider_man, actor: kirsten_dunst)
MovieActor.create(movie: the_incredible_hulk, actor: edward_norton)
MovieActor.create(movie: wonder_woman, actor: gal_gadot)
MovieActor.create(movie: black_panther, actor: chadwick_boseman)

meghab = User.create(email: "megha@movie.com", password: "123456")
vishu = User.create(email: "vishu@movie.com", password: "123456")

Favorite.create(user: meghab ,movie: batman_begins)
Favorite.create(user: meghab ,movie: the_dark_knight)
Favorite.create(user: vishu ,movie: batman_begins)
Favorite.create(user: vishu ,movie: iron_man)
Favorite.create(user: meghab ,movie: iron_man2)


# Review.create(body: "It was awesome", rating: 5, movie: batman_begins)
# Review.create(body: "Liked it", rating: 3, movie: batman_begins)
# Review.create(body: "Loved the movie", rating: 5, movie: the_dark_knight)
# Review.create(body: "Great selection for suit colors", rating:5, movie: iron_man)
# Review.create(body: "Wonderful movie", rating:5, movie: the_dark_knight_rises)
# Review.create(body: "Good movie", rating:3, movie: the_incredible_hulk)
# Review.create(body: "It was a fun movie", rating:3, movie: iron_man2)
# Review.create(body: "love Tony Stark", rating:3, movie: iron_man3)
# Review.create(body: "liked it", rating:3, movie: spider_man)
# Review.create(body: "nice movie", rating:3, movie: wonder_woman)
# Review.create(body: "good movie", rating:5, movie: black_panther)
