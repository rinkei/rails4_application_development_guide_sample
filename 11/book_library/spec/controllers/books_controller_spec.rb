require 'rails_helper'

RSpec.describe BooksController, :type => :controller do

  describe "index" do
    it "assigns a query as @query" do
      get :index, {}, {}
      expect(assigns(:query)).to an_instance_of Query
    end

    it "assigns all books as @books without query" do
      b1 = Book.create!(title: 'hoge')
      b2 = Book.create!(title: 'fuga')

      get :index, {}, {}
      expect(assigns(:books)).to eq [b1, b2]
    end

    it "assigns books as @books required by query" do
      b1 = Book.create!(title: 'hoge')
      b2 = Book.create!(title: 'fuga')

      get :index, {query: {keyword: 'hoge'}}, {}
      expect(assigns(:books)).to eq [b1]
    end
  end
end
