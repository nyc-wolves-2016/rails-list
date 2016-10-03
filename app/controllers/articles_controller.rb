class ArticlesController < ApplicationController
  def index
    @articles = Category.find(params[:category_id]).articles
  end
end
