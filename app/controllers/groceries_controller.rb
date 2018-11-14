class GroceriesController < ApplicationController
  
  def index
    @groceries = Grocery.all
  end

  def show
  end

  def new
    @groceries = Grocery.new
  end

  def create
    @grocery = Grocery.new(grocery_params)
    if @grocery.save
      redirect_to groceries_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @grocery.update(grocery_params)
      redirect_to groceries_path
    else
      render :edit
    end
  end

  def destroy
    @grocery.destroy
    redirect_to groceries_path
  end

  private
  def grocery_params
    params.require(:name).permit(:name)
  end

end
