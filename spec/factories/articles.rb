FactoryBot.define do
  factory :article do
    title { "Article title" }
    text { "Article text" }

    # Создаём фарбику с названием article_with_comments
    # Для создания статьи с несколькими комментариями
    factory :article_with_comments do
      # После создания article создаём список из комментариев
      after :create do |article, evaluator|
        create_list(:comment, 3, article: article)
      end
    end

  end
end