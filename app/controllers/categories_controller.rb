class CategoriesController < ApplicationController
  before_action :find_category

  def index
    @categories = Category.all
  end

  def find_category
    @category = Category.find(params[:id])
  end
end

