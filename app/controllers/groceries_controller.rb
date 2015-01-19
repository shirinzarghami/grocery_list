class GroceriesController < ApplicationController

  def new
    @grocery= Grocery.new()
    @category = Category.new()
     add_crumb "Add new grocery list", 'new_grocery'
  end

  def create
    # debugger
    @grocery =Grocery.new(grocery_params)
    if @grocery.save
      redirect_to groceries_path
    else
      render 'new'
    end
  end

  def show
    @grocery= Grocery.find(params[ :id])
  end

  def index
    @category_filter = params[:category_id]
    @groceries = if @category_filter
      add_crumb "grocery list", 'grocery'
      @category = Category.find(@category_filter)
      @category.groceries.by_name
    else
      add_crumb "grocery lists", 'groceries'
      Grocery.by_name
    end
  end

  def edit
    add_crumb "Edit grocery list", 'edit_grocery'
    @grocery= Grocery.find(params[ :id])

  end

  def update
    # debugger
    @grocery = Grocery.find(params[:id])
    if @grocery.update(grocery_params)
      redirect_to :action => 'index'
    else
      render 'edit'
    end
  end

  def destroy
    @grocery= Grocery.find(params[ :id])
    @grocery.destroy

    redirect_to groceries_path
  end

  private
  def grocery_params
    params.require(:grocery).permit(:name, :number, :category, :explanation, :bought, :photo , category_ids: [])
  end
end
