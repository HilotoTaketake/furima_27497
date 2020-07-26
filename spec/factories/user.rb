FactoryBot.define do
  factory :user do
    
      nickname                   { "abc" }
      password                   { "111111a" }
      password_confirmation      {"111111a"}
      h_last_name                {"たけにし"}
      h_first_name               {"ひろと"}
      k_last_name                {"タケニシ"}   
      k_first_name               {"ヒロト"}
      birthday                   {"1998-7-11"}
      email                      { "kkk@gmail.com" } 
      
  end
end