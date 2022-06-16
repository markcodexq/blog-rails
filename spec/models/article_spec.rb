require "spec_helper"
require "rails_helper"

describe Article do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
    it { should validate_length_of(:title).is_at_most(140) }
    it { should validate_length_of(:text).is_at_most(4000) }
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      # Создаём объект Article хитрым способом
      article = create(:article, title: "lorem ipsum")

      # assert, проверка
      expect(article.subject).to eq "lorem ipsum"
    end
  end

  describe "#last_comment" do
    it "returns last comment" do
      # Создаём статью, но в этот раз с комментариями
      article = create(:article_with_comments)

      # Проверка
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
end