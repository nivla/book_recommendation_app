# Book recommendation
[book-recommendation.herokuapp.com](http://book-recommendation.herokuapp.com)
## Getting Started

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script].

[this script]: https://github.com/thoughtbot/laptop

After setting up, you can run the application using [foreman]:

    % foreman start

If you don't have `foreman`, see [Foreman's install instructions][foreman]. It
is [purposefully excluded from the project's `Gemfile`][exclude].

[foreman]: https://github.com/ddollar/foreman
[exclude]: https://github.com/ddollar/foreman/pull/437#issuecomment-41110407

## Guidelines

Use the following guides for getting things done, programming well, and
programming in style.

* [Protocol](http://github.com/thoughtbot/guides/blob/master/protocol)
* [Best Practices](http://github.com/thoughtbot/guides/blob/master/best-practices)
* [Style](http://github.com/thoughtbot/guides/blob/master/style)

## Deploying

If you have previously run the `./bin/setup` script,
you can deploy to staging and production with:

    $ ./bin/deploy staging
    $ ./bin/deploy production

## App Setup
* Share the code in a public GitHub repo (this allows for free tools)
* Use a Trello board w/ features
* (roughly follow https://playbook.thoughtbot.com/#tasks7)
* Enable hound for PR style reviews
* Enable CircleCI for testing PRs
* Deploy to Heroku
* Work via PRs w/ code review

## App Features
The app you'll be building is inspired by [GoodReads](http://www.goodreads.com/), a social network
centered around books. You'll be building out a subset of the functionality
on the site using normal Rails techniques. The domain lends itself well to
Rails, with a number of relationships and various ways to display the data
stored in the system.

This app is mainly about the books. Books have titles, descriptions,
cover images (no need to allow file uploads, just store the URL as a string).

Books also have one author and one (or none) genre. They can be grouped into
lists, like "Best Sci-Fi" or "Books that were made into movies". A book can be
on multiple lists.

### Books Page

- View a list of all books
- List is paginated (20 per page)
- Filter books by Genre
- Sortable by date
- Book page

View a single book, seeing detail like the summary which is not on the
books list.
Users who are signed in and have not already written a review can write a
text review of the book.
The book page should list all reviews (with the review user's name).
### Lists Page
- Shows all of the lists of books, like "Best Sci-Fi", "Romance", etc
- Displays the list title, and 5-10 book cover images for each list

### List Page
- View an individual list
- Displays each of the books, similar to how they are displayed on the Books page

### Authors Page
- List all the authors
- For each author, show name and sample covers of up to 5 of their books

### Author Page
- List author name, bio, etc
- List author books, similar to display on List Page

## Advanced Features
If you're team gets through all of these challenges, then these are a few
more advanced features to try:

### URL Slugs

Rather than the normal ID based urls, for instance /books/10, use "slugs"
based on the book title, for instance /books/the-martian.

Note The above example is likely insufficient as book titles are not
necessarily unique. Check out GoodReads for a pointer.

### Allow Users to edit their reviews

1-5 Star Ratings w/ Review

In addition to the text review, allow users to give a book 1-5 stars. (feel
free to make this a drop down rather than fancy star widget in the form)

### Display avg rating

Whenever books are displayed, show the average rating for the book based on
all the reviews

All sorting by average rating

In addition to the sort by date on the books page, allow sorting by avg
rating.

## Judging Criteria
- Git history
- Avoid merge commits
- Have clear commit messages
- Tests
- Good feature coverage
- Minimal duplication
- Data model / architecture.
- Clean separation of responsibilities for each model. DRY.
- Clean, RESTful routing
- On the books page, the URL should fully capture the pagination, sort, and filter state
- Clean code
- Minimal duplication
- Expressive well named methods
- small methods

## Additional Guidelines
- No JS
- pagination, sorting, and filtering
- Link Everything
- No Admin
- Minimal Design

![Author](https://cdn.discourse.org/business/uploads/upcase/original/2X/b/b42fc7181a749025b338e21780411ca7e3a8c60b.jpg)

![Lists](https://cdn.discourse.org/business/uploads/upcase/optimized/2X/2/242b9944cfb80dcaa4cbf4ecd2eb2e6ba5c34b04_1_564x499.jpg)

![Authors](https://cdn.discourse.org/business/uploads/upcase/optimized/2X/9/92bf94a6043c07e5b674a02648fbe98ae8285f7b_1_554x500.jpg)

![Book](https://cdn.discourse.org/business/uploads/upcase/optimized/2X/8/818d36641f70c3709b52206c0b734c9fac227dea_1_606x500.jpg)

![List](https://cdn.discourse.org/business/uploads/upcase/optimized/2X/7/71510d71e5c52b8ce906914dbbc5e835c3b31494_1_564x499.jpg)

![Books](https://cdn.discourse.org/business/uploads/upcase/optimized/2X/f/feee648650efab9fd64f7774cd2b11bd209118fa_1_462x499.jpg)
