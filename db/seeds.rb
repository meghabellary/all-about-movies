# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

batman_begins = Movie.create(title: "Batman Begins", plot: "As a child, Bruce Wayne falls down into a dry well and is attacked by a swarm of bats, subsequently developing a phobia of the creatures. While watching an opera with his parents, Thomas and Martha, Bruce becomes frightened by performers masquerading as bats and asks to leave. Outside, mugger Joe Chill murders Bruce's parents in front of him. Orphaned, Bruce is raised by the family butler, Alfred Pennyworth.", release_date:"2005-06-15", trailer_url: "https://www.youtube.com/watch?v=neY2xVmOfUM")
the_dark_knight = Movie.create(title: "The Dark Knight", plot: "A gang of criminals rob a Gotham City mob bank, murdering each other until only the mastermind remains: the Joker, who escapes with the money.",release_date:"2008-07-18", trailer_url: "https://www.youtube.com/watch?v=_PZpmTj1Q8Q")
the_dark_knight_rises = Movie.create(title: "The Dark Knight Rises", plot: "Eight years after the death of District Attorney Harvey Dent, Batman has disappeared and organized crime has been eradicated in Gotham City thanks to the Dent Act. Police Commissioner James Gordon has kept secret Dent's murderous rampage and allowed blame for his crimes to fall on Batman. He writes a resignation speech revealing the truth, but decides that the city is not ready to hear it.",release_date:"2012-07-20",trailer_url: "https://www.youtube.com/watch?v=g8evyE9TuYk&t=8s")
iron_man = Movie.create(title: "Iron Man", plot: "Genius, billionaire, and playboy Tony Stark, who has inherited the defense contractor Stark Industries from his father, is in war-torn Afghanistan with his friend and military liaison Lieutenant Colonel James Rhodes to demonstrate the new Jericho missile. After the demonstration, the convoy is ambushed and Stark is critically wounded by one of his own company's rocket-propelled grenades. He is captured and imprisoned in a cave by a terrorist group, the Ten Rings; Yinsen, a fellow captive who is a doctor, implants an electromagnet into Stark's chest to keep the shrapnel shards that wounded him from reaching his heart and killing him. Ten Rings leader Raza offers Stark freedom in exchange for building a Jericho missile for the group, but Tony and Yinsen know that Raza will not keep his word.", release_date:"2008-05-02", trailer_url: "https://www.youtube.com/watch?v=W7yOdog7Dxg")


christian_bale = Actor.create(name: "Christian Bale", age: 44, description: "Bale was born in Haverfordwest, Pembrokeshire, the son of Jenny (née James), a circus performer, and David Bale, an entrepreneur, commercial pilot and talent manager.[4][5][6] Bale has three sisters.His mother is English and his father was born in South Africa. He spent his childhood in Wales, Surrey and Dorset in England, and Portugal.Bale acknowledged that the frequent relocation had a major influence on his career choice.His first acting role was a commercial for the fabric softener Lenor in 1982. A year later, he appeared in a Pac-Man cereal commercial playing a child rock star. In 1984, he made his stage debut in The Nerd on London's West End with Rowan Atkinson.")
micheal_caine = Actor.create(name: "Micheal Caine", age: 85, description: "Michael Caine was born Maurice Joseph Micklewhite Jr. on 14 March 1933 in St Olave's Hospital in Rotherhithe, London. Caine began his acting career at the age of 20 in Horsham, Sussex, when he responded to an advertisement in The Stage for an assistant stage manager who would also perform small walk-on parts for the Horsham-based Westminster Repertory Company who were performing at the Carfax Electric Theatre.")
liam_neeson = Actor.create(name: "Liam Neeson", age: 65, description: "Neeson was born in Ballymena, County Antrim, Northern Ireland, the son of Katherine Kitty Neeson (née Brown), a cook, and Bernard Barney Neeson, a caretaker at the Ballymena Boys All Saints Primary School.")
robert_downey_jr = Actor.create(name: "Robert Downey Jr", age: 53, description: "Downey was born in Manhattan, New York on April 4, 1965, the younger of two children. His father, Robert Downey Sr., is an actor and filmmaker, while his mother, Elsie Ann (née Ford), was an actress who appeared in Downey Sr.'s films.Downey's father is of half Lithuanian Jewish, one-quarter Hungarian Jewish, and one-quarter Irish descent, while Downey's mother had Scottish, German, and Swiss ancestry.Downey and his older sister Allyson grew up in Greenwich Village")
terrence_howard = Actor.create(name: "Terrence Howard", age: 49, description: "Howard was born in Chicago, Illinois, on March 11, 1969, to Tyrone and Anita (née Hawkins) Howard. He is the great-grandson of stage actress Minnie Gentry. Howard first entered the entertainment world when he portrayed Jackie Jackson in The Jacksons: An American Dream, an ABC miniseries. Three years later, he made his big film break in 1995's Mr. Holland's Opus.")
gwyneth_kate_paltrow = Actor.create(name: "Gwyneth Kate Paltrow", age: 45, description: "Paltrow was born in Los Angeles, the daughter of actress Blythe Danner and film producer-director Bruce Paltrow (1943–2002). She has a younger brother, Jake Paltrow, who is a director and screenwriter.")

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

Review.create(body: "It was awesome", rating: 5, movie: batman_begins)
Review.create(body: "Liked it", rating: 3, movie: batman_begins)
Review.create(body: "Really loved all the dialogues", rating: 5, movie: the_dark_knight)
Review.create(body: "Great selection for suit colors", rating:5, movie: iron_man)
Review.create(body: "Wonderful movie", rating:5, movie: the_dark_knight_rises)
