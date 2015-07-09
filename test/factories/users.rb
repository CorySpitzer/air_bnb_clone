FactoryGirl.define do
  factory :user do
    name "A"
    username "A1"
    email "a@a.com"
    password "123456789"
    admin false
  end

  factory :user2, class: User do
    name "B"
    username "B1"
    email "b@b.com"
    password "123456789"
    admin false
  end

end
