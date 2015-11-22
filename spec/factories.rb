FactoryGirl.define do
  factory :list_entry do
    list
    book
  end

  factory :list do
    name "Best Horrors Movies"
  end

  factory :book do
    title "MyString"
    cover_image "MyString"
    summary "MyText"
    genre
    author
  end

  factory :genre do
    name "Horror"
  end

  factory :author do
    full_name "Stephen King"
    picture "MyString"
    gender "MyString"
    born "MyString"
    bio "Author Bio"
  end
end
