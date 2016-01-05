FactoryGirl.define do
  factory :review do
    book_id 1
    user_id 1
    content "MyText"
    score 1
  end

  factory :user do
    name "Example user"
    sequence(:email) {|n| "user#{n}@example.com"}
    password "somepassword"
  end

  factory :list_entry do
    list
    book
  end

  factory :list do
    name "Best Horrors Movies"
  end

  factory :book do
    sequence(:title) { |n| "Book #{n}" }
    cover_image "MyString"
    summary "MyText"
    genre
    author
  end

  factory :genre do
    sequence(:name) { |n| "Categorie #{n}" }
  end

  factory :author do
    sequence(:full_name) { |n| "Author #{n}" }
    picture "MyString"
    gender "MyString"
    born "MyString"
    bio "Author Bio"
  end
end
