Author.destroy_all

susan_cooper = Author.create!(
  full_name: "Susan Cooper",
  born: "in Burnham, Buckinghamshire, The United Kingdom ",
  picture: "https://d.gr-assets.com/authors/1379606336p5/7308.jpg",
  bio: "Susan Cooper was born in 1935, and grew up in England's Buckinghamshire,
  an area that was green countryside then but has since become part of
  Greater London. As a child, she loved to read, as did her younger brother,
  who also became a writer. After attending Oxford, where she became the first
  woman to ever edit that university's newspaper, Cooper worked as a reporter
  and feature writer for London's Sunday Times; her first boss was James Bond
  creator Ian Fleming.",
  gender: "female"
)

stephen_king = Author.create!(
  full_name: "Stephen King",
  born: "in Portland, Maine, The United States",
  picture: "https://d.gr-assets.com/authors/1362814142p5/3389.jpg",
  bio: "Stephen Edwin King was born the second son of Donald and Nellie Ruth
  Pillsbury King. After his father left them when Stephen was two,
  he and his older brother, David, were raised by his mother.",
  gender: "male"
)

Genre.destroy_all

fantasy = Genre.create!(name: "Fantasy")
horror = Genre.create!(name: "Horror")

Book.destroy_all

greenwith = Book.create!(
  title: "Greenwitch",
  summary: "Simon, Jane, and Barney, enlisted by their mysterious great-uncle,
  arrive in a small coastal town to recover a priceless golden grail stolen by
  the forces of evil -- Dark.",
  cover_image: "https://d.gr-assets.com/books/1368431585l/24963.jpg",
  author: susan_cooper,
  genre: fantasy
)

the_shining = Book.create!(
  title: "The Shining",
  summary: "Danny was only five years old but in the words of old Mr Halloran
  he was a 'shiner', aglow with psychic voltage. When his father became
  caretaker of the Overlook Hotel his visions grew frighteningly out of control.",
  cover_image: "https://d.gr-assets.com/books/1353277730l/11588.jpg",
  author: stephen_king,
  genre: horror
)

it = Book.create!(
  title: "It",
  summary: "To the children, the town was their whole world. To the adults,
             knowing better, Derry, Maine was just their home town: familiar,
  well-ordered for the most part. A good place to live.",
  cover_image: "https://d.gr-assets.com/books/1334416842l/830502.jpg",
  author: stephen_king,
  genre: horror
)

alice = Book.create!(
  title: "Alice",
  summary: "mind-bending new novel inspired by the twisted and wondrous
  works of Lewis Carroll... In a warren of crumbling buildings and desperate
  people called the Old City, there stands a hospital with",
  cover_image: "https://d.gr-assets.com/books/1416530621l/23398606.jpg",
  author: stephen_king,
  genre: horror
)

follow_you_home = Book.create!(
  title: "Follow you home",
  summary: "mind-Alicebending new novel inspired by the twisted and wondrous
  ur eyes peeled for a small black iron door. Down the road from a working-class
  British pub, along the brick wall of a narrow alley, if the conditions are
  exactly right, you’ll find the entrance",
  cover_image: "https://d.gr-assets.com/books/1430403863l/24833801.jpg",
  author: stephen_king,
  genre: horror
)

twisted = Book.create!(
  title: "Twisted",
  summary: "mind-Alicebending new novel inspired by the twisted and wondrous
  ur eyes peeled for a small black iron door. Down the road from a working-class
  British pub, along the brick wall of a narrow alley, if the conditions are
  exactly right, you’ll find the entrance",
  cover_image: "https://d.gr-assets.com/books/1424736750l/23614038.jpg",
  author: stephen_king,
  genre: horror
)
rolling_in_the_deep = Book.create!(
  title: "Rolling in the deep",
  summary: "mind-Alicebending new novel inspired by the twisted and wondrous
  ur eyes peeled for a small black iron door. Down the road from a working-class
  British pub, along the brick wall of a narrow alley, if the conditions are
  exactly right, you’ll find the entrance",
  cover_image: "http://d.gr-assets.com/books/1417291618l/23634011.jpg",
  author: stephen_king,
  genre: horror
)
List.destroy_all

best_horror = List.create!(name: "Best Horror")
best_fantasy = List.create!(name: "Best Fantasy")

ListEntry.create([
  {
    list: best_horror,
    book: it
  },
  {
    list: best_horror,
    book: the_shining
  },
  {
    list: best_horror,
    book: alice
  },
  {
    list: best_horror,
    book: follow_you_home
  },
  {
    list: best_horror,
    book: rolling_in_the_deep
  },
  {
    list: best_horror,
    book: twisted
  },
  {
    list: best_fantasy,
    book: greenwith
  }
])
