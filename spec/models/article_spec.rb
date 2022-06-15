require "spec_helper"
require "rails_helper"

describe Article do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
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
end