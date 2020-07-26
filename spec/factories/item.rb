FactoryBot.define do
  factory :item do
    name              { "kiki" }
    image             { "20200708-00020635-nekomag-000-1-view.jjg"} 
    explain           {"この商品は昔使用していたものです"}
    content           { 1 }
    category_id       { "000" }
    how_pay           { 1 }
    prefecture_id     { "1" }
    how_long          { 1 }
    price             { "1" }
    user_id           { 1 }
  end
end