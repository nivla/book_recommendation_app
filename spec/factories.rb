FactoryGirl.define do  factory :list_entry do
    list_id 1
book_id 1
  end
  factory :list do
    name "MyString"
  end
  factory :book do
    title "MyString"
cover_image "MyString"
summary "MyText"
genre_id 1
author_id 1
  end
  factory :genre do
    name "MyString"
  end
  factory :author do
    full_name "MyString"
picture "MyString"
gender "MyString"
born "MyString"
  end

end
