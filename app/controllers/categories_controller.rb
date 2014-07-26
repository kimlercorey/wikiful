class CategoriesController < ApplicationController

  def index
    @categories = Category.order(name: :asc).all
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.order(created_at: :desc).all if @category
    
  end

end
