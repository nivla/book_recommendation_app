Author.destroy_all
Author.create!([{
  full_name: "Susan Cooper",
  born: "in Burnham, Buckinghamshire, The United Kingdom ",
  picture: "https://d.gr-assets.com/authors/1379606336p5/7308.jpg",
  bio: "Susan Cooper was born in 1935, and grew up in England's Buckinghamshire, an area that was green countryside then but has since become part of Greater London. As a child, she loved to read, as did her younger brother,who also became a writer. After attending Oxford, where she became the first woman to ever edit that university's newspaper, Cooper worked as a reporter and feature writer for London's Sunday Times; her first boss was James Bond creator Ian Fleming.",
  gender: "female"
}, {
  full_name: "Stephen King",
  born: "in Portland, Maine, The United States",
  picture: "https://d.gr-assets.com/authors/1362814142p5/3389.jpg",
  bio: "Stephen Edwin King was born the second son of Donald and Nellie Ruth
  Pillsbury King. After his father left them when Stephen was two,
  he and his older brother, David, were raised by his mother.",
  gender: "male"
}])

Genre.destroy_all
Genre.create!([
  { name: "Horror" },
  { name: "Fantasy" }
])

Book.destroy_all
Book.create!([{
  title: "Greenwitch",
  summary: "Simon, Jane, and Barney, enlisted by their mysterious great-uncle,
  arrive in a small coastal town to recover a priceless golden grail stolen by
  the forces of evil -- Dark.",
  cover_image: "https://d.gr-assets.com/books/1368431585l/24963.jpg",
  author: Author.first,
  genre: Genre.first
}, {
  title: "The Shining",
  summary: "Danny was only five years old but in the words of old Mr Halloran
  he was a 'shiner', aglow with psychic voltage. When his father became
  caretaker of the Overlook Hotel his visions grew frighteningly out of control.",
  cover_image: "https://d.gr-assets.com/books/1353277730l/11588.jpg",
  author: Author.second,
  genre: Genre.second
}, {
  title: "It",
  summary: "To the children, the town was their whole world. To the adults,
  knowing better, Derry, Maine was just their home town: familiar,
  well-ordered for the most part. A good place to live.",
  cover_image: "https://d.gr-assets.com/books/1334416842l/830502.jpg",
  author: Author.second,
  genre: Genre.first
}])
