class CategoriesController < ApplicationController
  def new
    @category=Category.new()
  end

  def create
    @category =Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def index
    @categories = Category.all

  end

  def edit
    @category= Category.find(params[ :id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:category] = "Post successfully updated."
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category= Category.find(params[ :id])
    @category.destroy
    redirect_to categories_path, notice: "Post successfully deleted."
  end
  private
  def category_params
    params.require(:category).permit(:name)
  end
end
